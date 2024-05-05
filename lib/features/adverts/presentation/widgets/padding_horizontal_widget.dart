import 'package:flutter/material.dart';

class PaddingHorizontalWidget extends StatelessWidget {
  const PaddingHorizontalWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: child,
    );
  }
}
