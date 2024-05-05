import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/core/errors/errors.dart';
import 'package:w_sharme_beauty/features/comment/domain/entities/comment.dart';
import 'package:w_sharme_beauty/features/comment/domain/repositiories/i_comment_repository.dart';

@LazySingleton(as: ICommentRepository)
class FirebaseCommentFacade implements ICommentRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  FirebaseCommentFacade(this.firestore, this.auth);

  @override
  Future<Either<PostError, Unit>> createComment({
    required Comment comment,
    required String postId,
    String? parentCommentId,
  }) async {
    try {
      final updatedComment = comment.copyWith(
        parentCommentId: parentCommentId ?? '',
        uid: auth.currentUser!.uid,
      );
      await firestore
          .collection('posts')
          .doc(postId)
          .collection('comments')
          .doc(updatedComment.commentId)
          .set(updatedComment.toJson());
      return right(unit);
    } catch (e) {
      return left(PostError(e.toString()));
    }
  }

  @override
  Future<Either<PostError, List<Comment>>> getComments({
    String? postId,
    String? parentCommentId,
  }) async {
    try {
      Query<Map<String, dynamic>> query =
          firestore.collection('posts').doc(postId).collection('comments');
      if (parentCommentId != null) {
        query = query.where('parentCommentId', isEqualTo: parentCommentId);
      }
      final querySnapshot = await query.get();
      final comments = querySnapshot.docs
          .map((doc) => Comment.fromJson(doc.data()))
          .toList();
      return right(comments);
    } catch (e) {
      return left(PostError(e.toString()));
    }
  }
}
