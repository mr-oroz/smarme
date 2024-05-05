import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';

class ProfileSettingCardItemWidget extends StatelessWidget {
  final String text;
  final String title;
  final TextStyle? style;
  final Function() onPresed;
  const ProfileSettingCardItemWidget({
    super.key,
    required this.text,
    required this.title,
    this.style = const TextStyle(
      fontSize: 14,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ), required this.onPresed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
          ),
        ),
        GestureDetector(
          onTap: onPresed,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.white,
            ),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                title,
                style: style,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
                color: AppColors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
