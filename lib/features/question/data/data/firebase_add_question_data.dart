import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:w_sharme_beauty/core/errors/errors.dart';
import 'package:w_sharme_beauty/features/question/domain/entities/add_question.dart';
import 'package:w_sharme_beauty/features/question/domain/repositories/add_question_repository.dart';

@LazySingleton(as: AddQuestionRepository)
class FirestoreAddQuestionRepository implements AddQuestionRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  FirestoreAddQuestionRepository({required this.firestore, required this.auth});
  @override
  Future<Either<PostError, Unit>> addQuestion(AddQuestion question) async {
    try {
      final user = auth.currentUser;
      final String uid = user!.uid;
      final String questionId = const Uuid().v1();
      final updatedQuestion = question.copyWith(
        uid: uid,
        questionId: questionId,
        createdAt: DateTime.now(),
      );
      await firestore
          .collection('addedQuestions')
          .add(updatedQuestion.toJson());
      return right(unit);
    } catch (e) {
      return left(PostError(e.toString()));
    }
  }
}
