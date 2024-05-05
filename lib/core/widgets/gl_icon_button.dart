import 'package:flutter/material.dart';

class GlIconButton extends StatelessWidget {
  const GlIconButton({super.key, required this.icon, required this.onPressed, this.iconSize});

  final Icon icon;
  final Function() onPressed;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 16,
      onPressed: onPressed,
      icon: icon,
      iconSize: iconSize ?? 16,
    );
  }
}
