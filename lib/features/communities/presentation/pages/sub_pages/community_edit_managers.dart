import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/center_title_app_bar.dart';
import 'package:w_sharme_beauty/core/widgets/gl_app_bar.dart';
import 'package:w_sharme_beauty/core/widgets/gl_circle_avatar.dart';
import 'package:w_sharme_beauty/core/widgets/gl_icon_button.dart';
import 'package:w_sharme_beauty/core/widgets/gl_scaffold.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CommunityEditManagersPage extends StatefulWidget {
  const CommunityEditManagersPage({super.key});

  @override
  State<CommunityEditManagersPage> createState() =>
      _CommunityEditManagersPageState();
}

class _CommunityEditManagersPageState extends State<CommunityEditManagersPage> {
  bool agreedToTerms1 = false;
  bool agreedToTerms2 = false;
  @override
  Widget build(BuildContext context) {
    return GlScaffold(
      horizontalPadding: 16,
      appBar: GlAppBar(
        leading: GlIconButton(
          iconSize: 16,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => context.pop(),
        ),
        title:  CenterTitleAppBar(
          title: 'Редактирование',
          textStyle: AppStyles.w500f18,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.6,
                  color: AppColors.grey,
                ),
                top: BorderSide(
                  width: 0.6,
                  color: AppColors.grey,
                ),
              ),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: GlCircleAvatar(
                avatar: Assets.images.nasya.path,
                width: 50,
                height: 50,
              ),
              title:  Text(
                "Nasya",
                style: AppStyles.w500f18,
              ),
              subtitle: Text(
                "Вы собираетесь назначить Nasya\n руководителем сообщества",
                style: AppStyles.w400f16.copyWith(color: AppColors.darkGrey),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Уровень полномочии",
            style: AppStyles.w500f14.copyWith(color: AppColors.darkGrey),
          ),
          const SizedBox(height: 10),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity:
                    const VisualDensity(horizontal: -4, vertical: -4),
                activeColor: AppColors.purple,
                shape: const CircleBorder(
                  side: BorderSide(
                    color: AppColors.purple,
                  ),
                ),
                value: agreedToTerms1,
                onChanged: (value) {
                  setState(() {
                    agreedToTerms1 = value!;
                  });
                },
              ),
            ),
            title:  Text(
              'Редактор',
              style: AppStyles.w500f18,
            ),
            subtitle: Text(
              'Может добавлять, удалять и редактировать контент, обновлять основную фотографию',
              style: AppStyles.w400f14.copyWith(color: AppColors.darkGrey),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                visualDensity:
                    const VisualDensity(horizontal: -4, vertical: -4),
                activeColor: AppColors.purple,
                shape: const CircleBorder(
                  side: BorderSide(
                    color: AppColors.purple,
                  ),
                ),
                value: agreedToTerms2,
                onChanged: (value) {
                  setState(() {
                    agreedToTerms2 = value!;
                  });
                },
              ),
            ),
            title:  Text(
              'Администратор',
              style: AppStyles.w500f18,
            ),
            subtitle: Text(
              'Может назначать и снимать администраторов, изменять название сообщества, создать чат сообщества.',
              style: AppStyles.w400f14.copyWith(color: AppColors.darkGrey),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.purple,
              minimumSize: const Size.fromHeight(50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: agreedToTerms1
                ? () {}
                : agreedToTerms2
                    ? () {}
                    : null,
            child: const Text(
              "Сохранить",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
