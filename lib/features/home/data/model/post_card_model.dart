import 'package:flutter/material.dart';

class PostCardModel {
  final String text;
  final String username;
  final String data;
  final Widget? postImages;
  final String like;
  final String repost;
  final String comments;
  final String avatar;
  final String id;

  PostCardModel({
    required this.text,
    required this.username,
    required this.data,
    this.postImages,
    required this.like,
    required this.repost,
    required this.comments,
    required this.avatar,
    required this.id,
  });

  @override
  String toString() {
    return 'PostCardModel{id: $id, text: $text, username: $username, data: $data, $postImages: postImages, $like: like, $repost: repost, $comments: comments, $avatar: avatar}';
  }
}
