import 'package:flutter/material.dart';

import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/gl_circle_avatar.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class SubscribersListTileWidget extends StatelessWidget {
  const SubscribersListTileWidget({
    super.key,
    this.onTap,
    required this.avatar,
    required this.title,
    required this.subtitle,
  });
  final Function()? onTap;
  final String avatar;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: GlCircleAvatar(
        avatar: avatar,
        width: 50,
        height: 50,
      ),
      title: Text(title, style: AppStyles.w500f18),
      subtitle: Text(
        subtitle,
        style: AppStyles.w400f16.copyWith(color: AppColors.darkGrey),
      ),
      trailing: GestureDetector(
        onTap: onTap,
        child: Image.asset(
          Assets.icons.moreHoriz.path,
          width: 26,
          height: 26,
        ),
      ),
    );
  }
}
