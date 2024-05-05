import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class GlOutlineButton extends StatelessWidget {
  const GlOutlineButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.height,
  });

  final Function() onPressed;
  final String title;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height ?? 40.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.purple),
          borderRadius: BorderRadius.circular(10),
        ),
        // Удалите BoxDecoration, так как она уже задана в Ink
        child: Center(
          child: Text(
            title,
            style: AppStyles.w400f16.copyWith(
              color: AppColors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
