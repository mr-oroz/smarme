import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.child, this.marginTop, this.marginBottom,
  });
  final Widget child;
  final double? marginTop;
  final double? marginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(top: marginTop ?? 0, bottom: marginBottom ?? 0),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: child,
    );
  }
}
