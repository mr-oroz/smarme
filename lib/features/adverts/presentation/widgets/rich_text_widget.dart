import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
    required this.firstText,
    required this.text,
  });
  final String firstText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$firstText:',
            style: AppStyles.w400f14.copyWith(color: AppColors.grey),
          ),
          TextSpan(
            text: text,
            style: AppStyles.w400f14,
          ),
        ],
      ),
    );
  }
}
