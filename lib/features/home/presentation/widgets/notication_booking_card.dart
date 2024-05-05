import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class NotificationBookingCard extends StatelessWidget {
  const NotificationBookingCard({
    super.key,
    required this.widget,
    required this.text,
  });
  final Widget widget;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 2,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlCircleAvatar(
                avatar: Assets.images.ava.path,
                width: 48,
                height: 48,
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nastya',
                      style: AppStyles.w500f16,
                    ),
                    Text(
                      text,
                      style: AppStyles.w400f13,
                    ),
                    Text(
                      '2 нед.',
                      overflow: TextOverflow.clip,
                      style: AppStyles.w400f14.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Flexible(child: widget),
      ],
    );
  }
}
