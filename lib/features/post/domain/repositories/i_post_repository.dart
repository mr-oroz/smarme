import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:w_sharme_beauty/core/errors/errors.dart';
import 'package:w_sharme_beauty/features/post/domain/entities/entities.dart';

abstract class IPostRepository {
  Future<Either<PostError, Unit>> createPost(
    Post post,
    List<Uint8List> imageFiles,
    String username,
    String? avatarUrl,
  );
  Future<Either<PostError, List<Post>>> getPosts({String? userId});
  Future<Either<PostError, Unit>> updateLikes(
    String postId,
    String authorId,
    bool add,
  );
  Future<Either<PostError, Post>> getPost(String postId, String? userId);
}
