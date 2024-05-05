import 'package:flutter/material.dart';

class StoriesModel {
  final String image;
  final String title;
  final VoidCallback onTap;

  StoriesModel({
    required this.onTap,
    required this.image,
    required this.title,
  });
}
