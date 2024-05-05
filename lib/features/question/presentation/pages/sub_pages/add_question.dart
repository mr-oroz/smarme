import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/adding_button.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/text_field_widget_with_title.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class AddQuestion extends StatefulWidget {
  const AddQuestion({super.key});

  @override
  State<AddQuestion> createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  bool agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return GlScaffold(
      horizontalPadding: 16,
      appBar: GlAppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title:  Text(
          'Задать вопрос',
          style: AppStyles.w500f18,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const TextFieldWidgetWithTitle(
              title: "Тема вопроса",
              hintText: "Придумайте тему вопросы",
            ),
            const SizedBox(
              height: 10,
            ),
            const TextFieldWidgetWithTitle(
              title: "Выберите категорию",
              hintText: "Выберите категорию",
              suffixIcon: Icon(
                Icons.expand_more_outlined,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Прикрипеть фото",
                  style: AppStyles.w400f14.copyWith(
                    color: AppColors.darkGrey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(Assets.images.ava.path),
                const SizedBox(
                  height: 50,
                ),
                AddingButton(text: '+ Выбрать фото', onPressed: () {}),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextFieldWidgetWithTitle(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              title: "Текст вопроса",
              titleStyle: AppStyles.w500f16.copyWith(color: AppColors.darkGrey),
              hintText: "Расскажите о вопросе подробнее",
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  activeColor: AppColors.purple,
                  shape: const CircleBorder(
                    side: BorderSide(
                      color: AppColors.purple,
                    ),
                  ),
                  value: agreedToTerms,
                  onChanged: (value) {
                    setState(() {
                      agreedToTerms = value!;
                    });
                  },
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Задать вопрос анонимно',
                        style: const TextStyle(
                          color: AppColors.purple,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.purple,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: agreedToTerms ? () {} : null,
              child: const Text(
                "Опубликовать вопрос",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
