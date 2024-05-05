import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';

class TextFieldWidgetWithTitle extends StatelessWidget {
  const TextFieldWidgetWithTitle({
    super.key,
    required this.title,
    this.titleStyle = const TextStyle(
      fontSize: 16,
      color: AppColors.darkGrey,
      fontWeight: FontWeight.w500,
    ),
    this.hintStyle = const TextStyle(
      color: AppColors.darkGrey,
    ),
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.filled = true,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
    this.maxLines = 1, this.controller,
  });
  final int? maxLines;
  final String title;
  final bool? filled;
  final TextStyle? titleStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            title,
            style: titleStyle,
          ),
        ),
        TextField(
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            contentPadding: contentPadding,
            constraints: const BoxConstraints(),
            isDense: true,
            filled: filled,
            fillColor: AppColors.lightGrey,
            hintText: hintText,
            hintStyle: hintStyle,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
