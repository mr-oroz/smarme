import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/core/errors/errors.dart';
import 'package:w_sharme_beauty/features/auth/domain/entities/entities.dart';
import 'package:w_sharme_beauty/features/profile/data/data/storage_methods.dart';
import 'package:w_sharme_beauty/features/profile/domain/repositories/i_profile_info_repository.dart';

@LazySingleton(as: IProfileInfoRepository)
class FirebaseProfileFacade implements IProfileInfoRepository {
  FirebaseProfileFacade(this.firestore, this.auth, this.storage);

  @override
  Future<Either<PostError, Unit>> updateInfiProfile(
    UserProfile user,
    Uint8List avatar,
    String? email,
  ) async {
    final userId = auth.currentUser!.uid;
    try {
      final photoUrl = await StorageMethods(auth, storage)
          .uploadImageToStorage('users', avatar, true);
      final users = firestore.collection('users');
      await users.doc(userId).update({
        'aboutYourself': user.aboutYourself,
        'category': user.category,
        'theme': user.theme,
        'location': user.city,
        'date': user.date,
        'name': user.name,
        'username': user.username,
        'profilePictureUrl': photoUrl,
        'email': email,
        'uid': userId,
      });
      return right(unit);
    } catch (e) {
      return left(PostError(e.toString()));
    }
  }

  @override
  Future<Either<PostError, UserProfile>> getMeInfo(String? userId) async {
    try {
      final effectiveUserId = userId ?? auth.currentUser?.uid;
      if (effectiveUserId == null) {
        return left(
            PostError('No user id provided and no authenticated user.'),);
      }
      final DocumentSnapshot userDoc =
          await firestore.collection('users').doc(effectiveUserId).get();
      if (!userDoc.exists) {
        return left(PostError('User not found.'));
      }
      final UserProfile userProfile =
          UserProfile.fromFirestore(userDoc.data()! as Map<String, dynamic>);
      return right(userProfile);
    } catch (e) {
      return left(PostError(e.toString()));
    }
  }

  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  final FirebaseStorage storage;
  
  
}
