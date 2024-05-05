import 'package:dartz/dartz.dart';
import 'package:w_sharme_beauty/core/errors/errors.dart';
import 'package:w_sharme_beauty/features/comment/domain/entities/comment.dart';

abstract class ICommentRepository {
  Future<Either<PostError, Unit>> createComment({
    required Comment comment,
    required String postId,
    String? parentCommentId,
  });
  Future<Either<PostError, List<Comment>>> getComments({
    String? postId,
    String? parentCommentId,
  });
}
