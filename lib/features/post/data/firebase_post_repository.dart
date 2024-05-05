import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:w_sharme_beauty/core/errors/errors.dart';
import 'package:w_sharme_beauty/core/utils/date_formatter.dart';
import 'package:w_sharme_beauty/features/post/data/firebase_storage_image_methods.dart';
import 'package:w_sharme_beauty/features/post/domain/entities/entities.dart';
import 'package:w_sharme_beauty/features/post/domain/repositories/repositories.dart';

@LazySingleton(as: IPostRepository)
class FirestorePostRepository implements IPostRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  final FirebaseStorage storage;
  FirestorePostRepository(this.firestore, this.auth, this.storage);
  @override
  Future<Either<PostError, Unit>> createPost(
    Post post,
    List<Uint8List>? imageFiles,
    String? username,
    String? avatarUrl,
  ) async {
    try {
      final String postId = const Uuid().v1();
      final String authorId = auth.currentUser!.uid;
      final DateTime now = DateTime.now();
      final String formattedDate = DateFormatter.format(now);
      final List<String> imageUrls =
          await FirebaseStorageImageMethods(auth, storage)
              .uploadImageToStorage(imageFiles!, true, 'posts');
      final updatedPost = post.copyWith(
        postId: postId,
        createdAt: formattedDate,
        authorId: authorId,
        imageUrls: imageUrls,
        username: username,
        avatarUrl: avatarUrl,
      );
      await firestore.collection('posts').doc(postId).set(updatedPost.toJson());
      return right(unit);
    } catch (e) {
      return left(PostError(e.toString()));
    }
  }

  @override
  Future<Either<PostError, List<Post>>> getPosts({String? userId}) async {
    try {
      late final QuerySnapshot querySnapshot;

      if (userId != null) {
        querySnapshot = await firestore
            .collection('posts')
            .where('authorId', isEqualTo: userId)
            .get();
      } else {
        querySnapshot = await firestore.collection('posts').get();
      }
      final List<Post> posts = querySnapshot.docs
          .map(
            (doc) => Post.fromJson(doc.data()! as Map<String, dynamic>),
          )
          .toList();
      return right(posts);
    } catch (e) {
      return left(PostError(e.toString()));
    }
  }

  @override
  Future<Either<PostError, Unit>> updateLikes(
    String postId,
    String userId,
    bool add,
  ) async {
    try {
      await firestore.collection('posts').doc(postId).update({
        'likes': add
            ? FieldValue.arrayUnion([userId])
            : FieldValue.arrayRemove([userId]),
      });
      return right(unit);
    } catch (e) {
      return left(PostError(e.toString()));
    }
  }

  @override
  Future<Either<PostError, Post>> getPost(
    String? postId,
    String? userId,
  ) async {
    try {
      if (postId == null) {
        return left(PostError('no Post id'));
      }
      final DocumentSnapshot post =
          await firestore.collection('posts').doc(postId).get();
      if (!post.exists) {
        return left(PostError('Post not found.'));
      }
      final Post userProfile =
          Post.fromStoreData(post.data()! as Map<String, dynamic>);
      return right(userProfile);
    } catch (e) {
      return left(PostError(e.toString()));
    }
  }
}
