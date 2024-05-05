import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class GlTextButton extends StatelessWidget {
  const GlTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });

  final String text;
  final Function() onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: AppStyles.w500f16.copyWith(color: color),
        ),
      ),
    );
  }
}
