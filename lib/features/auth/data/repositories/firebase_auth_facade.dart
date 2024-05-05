import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/auth/domain/entities/entities.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/repositories.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _store;

  FirebaseAuthFacade(this._firebaseAuth, this._store);

  @override
  Future<Option<UserProfile>> getSignedInUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) {
      return none();
    } else {
      return some(
        UserProfile(
          uid: firebaseUser.uid,
          email: firebaseUser.email,
          name: firebaseUser.displayName,
          profilePictureUrl: firebaseUser.photoURL,
        ),
      );
    }
  }

  @override
  Future<AuthFacadeResult> loginWithEmail(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email' || e.code == 'invalid-credential') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> registerWithEmail(
    String email,
    String password,
  ) async {
    try {
      final result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final userId = result.user?.uid; // Получаем UID
      if (userId != null) {
        return right(userId);
      } else {
        return left(const AuthFailure.serverError());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<AuthFacadeResult> logout() async {
    try {
      await _firebaseAuth.signOut();
      return right(unit);
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<AuthFacadeResult> saveDataUser(
    String name,
    String city,
    String username,
    String userId,
  ) async {
    try {
      final users = _store.collection('users');
      await users.doc(userId).set({
        'name': name,
        'city': city,
        'username': username,
      });
      return right(unit);
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<AuthFacadeResult> resetPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.emailInvalid());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (_) {
      return left(const AuthFailure.serverError());
    }
  }
}
