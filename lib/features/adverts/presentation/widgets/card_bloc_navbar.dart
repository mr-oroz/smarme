import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class CardBlocNavbar extends StatelessWidget {
  const CardBlocNavbar({
    super.key,
    required this.title,
    required this.desc,
    required this.rating,
  });

  final String title;
  final String desc;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.w500f16,
        ),
        Text(
          desc,
          style: AppStyles.w400f14.copyWith(color: AppColors.grey),
        ),
        Row(
          children: [
            const Icon(Icons.star, color: AppColors.yellow),
            Text(
              rating,
              style: AppStyles.w500f14,
            ),
            Text(
              ' /5 ',
              style: AppStyles.w400f13
                  .copyWith(fontSize: 10, color: AppColors.grey),
            ),
            Text(
              '(345)',
              style: AppStyles.w400f14.copyWith(
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
