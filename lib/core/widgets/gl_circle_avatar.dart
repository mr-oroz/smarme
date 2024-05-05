import 'package:flutter/material.dart';

class GlCircleAvatar extends StatelessWidget {
  const GlCircleAvatar({
    super.key,
    required this.avatar,
    required this.width,
    required this.height,
  });

  final String avatar;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width,
      width: height,
      child: CircleAvatar(
        backgroundImage: AssetImage(avatar),
      ),
    );
  }
}
