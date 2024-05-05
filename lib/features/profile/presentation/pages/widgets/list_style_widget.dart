import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class ListStileWidget extends StatelessWidget {
  const ListStileWidget({
    super.key,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.leading,
    this.onTap,
  });
  final Widget? leading;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: leading,
      title: Text(
        title,
        style: AppStyles.w500f16.copyWith(fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        subtitle,
        style: AppStyles.w400f14.copyWith(color: AppColors.grey),
      ),
      trailing: trailing,
    );
  }
}
