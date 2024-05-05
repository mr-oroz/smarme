import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/home/data/model/comments_model.dart';
import 'package:w_sharme_beauty/features/home/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class MyQuestions extends StatefulWidget {
  const MyQuestions({super.key});

  @override
  State<MyQuestions> createState() => _MyQuestionsState();
}

class _MyQuestionsState extends State<MyQuestions> {
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
        title: CenterTitleAppBar(
          title: 'Вопросы',
          textStyle: AppStyles.w500f18,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: GlCircleAvatar(
                avatar: Assets.images.ella.path,
                width: 46,
                height: 46,
              ),
              title: const Text(
                'Ella Ivanova',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '22 мар в 08:39',
                    style: AppStyles.w400f14.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Посоветуйте каким гель-лаком пользоваться?",
                  style: AppStyles.w500f14,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "2 ответа",
              style: AppStyles.w400f14.copyWith(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            //CommentBookingCard(
            //  item: CommentsModel(
            //    username: 'Elena',
            //    comment:
            //        'Все супер! Хочу записаться. Можете сказать сколько стоило этот маникюр?',
            //    like: '1',
            //    id: 'sdfghjk',
            //  ),
            //  avatar: Assets.images.elena.path,
            //),
            //const SizedBox(
            //  height: 10,
            //),
            //Container(
            //  width: MediaQuery.of(context).size.width,
            //  padding: const EdgeInsets.only(left: 40),
            //  child: CommentBookingCard(
            //    item: CommentsModel(
            //      username: 'Nastya',
            //      comment: 'Спасибо. 5000 рублей',
            //      like: '1',
            //      id: 'sdfghjk',
            //    ),
            //    avatar: Assets.images.nastya.path,
            //  ),
            //),
            //const SizedBox(
            //  height: 10,
            //),
            //CommentBookingCard(
            //  item: CommentsModel(
            //    username: 'Elena',
            //    comment:
            //        'Все супер! Хочу записаться. Можете сказать сколько стоило этот маникюр?',
            //    like: '1',
            //    id: 'sdfghjk',
            //  ),
            //  avatar: Assets.images.nastii.path,
            //),
            const SizedBox(
              height: 10,
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Ваш комментарий',
                      filled: true,
                      fillColor: AppColors.lightGrey,
                      labelStyle: const TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.purple,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Icon(
                      Icons.arrow_upward_outlined,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
