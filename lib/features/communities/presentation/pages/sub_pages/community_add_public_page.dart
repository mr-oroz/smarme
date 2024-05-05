import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/adding_button.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/text_field_widget_with_title.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CommunityAddPublicPage extends StatelessWidget {
  const CommunityAddPublicPage({super.key});

  @override
  Widget build(BuildContext context) {
    GoRouter.of(context);
    return GlScaffold(
      horizontalPadding: 16,
      appBar: GlAppBar(
        leading: GlIconButton(
          iconSize: 16,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.pop();
          },
        ),
        title:  CenterTitleAppBar(
          title: 'Публикация',
          textStyle: AppStyles.w500f18,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            "Выберите фото или видео",
            style: AppStyles.w500f16.copyWith(
              color: AppColors.darkGrey,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            Assets.icons.addPublic.path,
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 20),
          AddingButton(
            text: "+ Выбрать из галереи",
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          TextFieldWidgetWithTitle(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            title: "Описание",
            titleStyle: AppStyles.w500f16.copyWith(color: AppColors.darkGrey),
            hintText: "Напишите сообщение",
          ),
          const Spacer(),
          GlButton(text: "Опубликовать", onPressed: () {}),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
