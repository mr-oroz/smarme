import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/adding_button.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/text_field_widget_with_title.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CommunityEditPage extends StatelessWidget {
  const CommunityEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    GoRouter.of(context);
    return GlScaffold(
      horizontalPadding: 16,
      appBar: GlAppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Center(
          child: Text(
            "Редактировать",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            TextFieldWidgetWithTitle(
              title: "Название сообщества",
              titleStyle: AppStyles.w500f14.copyWith(color: AppColors.darkGrey),
              hintText: "Комьюнити",
              hintStyle: AppStyles.w400f16,
            ),
            const SizedBox(height: 14),
            TextFieldWidgetWithTitle(
              title: "Категория сообщества",
              titleStyle: AppStyles.w500f14.copyWith(color: AppColors.darkGrey),
              hintText: "Маникюр, педикюр, ресницы",
              hintStyle: AppStyles.w400f16,
              suffixIcon: const Icon(
                Icons.expand_more_outlined,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              "Аватар сообщества",
              style: AppStyles.w500f14.copyWith(color: AppColors.darkGrey),
            ),
            const SizedBox(height: 8),
            Image.asset(Assets.images.ava.path),
            const SizedBox(
              height: 50,
            ),
            AddingButton(text: '+ Выбрать фото', onPressed: () {}),
            const SizedBox(
              height: 20,
            ),
             TextFieldWidgetWithTitle(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              title: "Описание сообщества",
              titleStyle: AppStyles.w500f14,
              hintText:
                  "Всем привет, мы публикуем самые трендовые\nи красивые дизайны для твоего маникюра!",
              hintStyle: AppStyles.w400f16,
              maxLines: 2,
            ),
            Text(
              "Используйте слова, которые описывают тематику сообщества и помогают быстрее его найти. Изменить описание можно в любой момент.",
              style: AppStyles.w400f13.copyWith(color: AppColors.darkGrey),
            ),
            const SizedBox(
              height: 80,
            ),
            GlButton(text: 'Сохранить', onPressed: () {}),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
