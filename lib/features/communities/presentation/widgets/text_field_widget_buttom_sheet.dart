import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';

class TextFieldWidgetButtomSheet extends StatelessWidget {
  const TextFieldWidgetButtomSheet({
    super.key,
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
  });

  final bool? filled;
  final TextStyle? titleStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }
}
