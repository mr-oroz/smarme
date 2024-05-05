import 'package:flutter/material.dart';

class BottomNavigationBarItemModel {
  final Widget image;
  final Widget activeImage;
  final String text;
  BottomNavigationBarItemModel({
    required this.image,
    required this.activeImage,
    required this.text,
  });
}
