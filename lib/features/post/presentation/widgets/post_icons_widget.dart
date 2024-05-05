import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class PostIconsWidget extends StatelessWidget {
  const PostIconsWidget({
    super.key,
    required this.icon,
    required this.text, required this.onPessed,
  });

  final SvgPicture icon;
  final String text;
  final Function() onPessed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPessed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        height: 32,
        decoration: BoxDecoration(
            color: AppColors.lightGrey, borderRadius: BorderRadius.circular(20),),
        child: Row(
          children: [
            icon,
            const SizedBox(width: 6),
            Text(
              text,
              style: AppStyles.w500f14.copyWith(color: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
