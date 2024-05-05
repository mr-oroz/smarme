import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class TextAuthWidget extends StatelessWidget {
  const TextAuthWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.w400f16,
    );
  }
}
