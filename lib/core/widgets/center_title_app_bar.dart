import 'package:flutter/material.dart';

class CenterTitleAppBar extends StatelessWidget {
  const CenterTitleAppBar({super.key, required this.title, required this.textStyle});

  final String title;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle,
    );
  }
}
