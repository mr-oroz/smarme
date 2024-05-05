import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/profile/data/models/stories_model.dart';
import 'package:w_sharme_beauty/features/question/presentation/pages/sub_pages/add_question.dart';
import 'package:w_sharme_beauty/features/question/presentation/pages/sub_pages/my_questions.dart';
import 'package:w_sharme_beauty/features/question/widgets/questions_widget.dart';
import 'package:w_sharme_beauty/features/question/widgets/questiowidget_with_column_and_list_tile.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<StoriesModel> storiesModel = [];
  @override
  void initState() {
    super.initState();
    storiesModel = [
      StoriesModel(
        image: Assets.icons.manikur.path,
        title: 'Маникюр',
        onTap: () {},
      ),
      StoriesModel(
        image: Assets.icons.pedikur.path,
        title: 'Педикюр',
        onTap: () {},
      ),
      StoriesModel(
        image: Assets.icons.brovi.path,
        title: 'Брови',
        onTap: () {},
      ),
      StoriesModel(
        image: Assets.icons.resnitsy.path,
        title: 'Ресницы',
        onTap: () {},
      ),
      StoriesModel(
        image: Assets.icons.strishka.path,
        title: 'Стрижка',
        onTap: () {},
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GlScaffold(
      horizontalPadding: 16,
      appBar: GlAppBar(
        leading: Row(
          children: [
            GlCircleAvatar(
              avatar: Assets.images.avatar.path,
              width: 26,
              height: 26,
            ),
            const SizedBox(width: 16),
             Text(
              'Вопросы и ответы',
              style: AppStyles.w500f22,
            ),
          ],
        ),
        action: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: Assets.icons.bell.image(
                width: 26,
                height: 26,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchWidget(),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QuestionsWidget(
                  wrapText: 'Мои вопросы',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyQuestions(),
                      ),
                    );
                  },
                ),
                QuestionsWidget(
                  wrapText: 'Мои ответы',
                  onTap: () {},
                ),
                QuestionsWidget(
                  wrapText: 'Задать вопрос',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddQuestion(),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Категории",
              style: AppStyles.w400f14.copyWith(
                color: AppColors.darkGrey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: storiesModel.length,
                itemBuilder: (item, index) {
                  final StoriesModel story = storiesModel[index];
                  return Column(
                    children: [
                      Image.asset(
                        story.image,
                        color: AppColors.purple,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        story.title,
                        style: AppStyles.w500f16.copyWith(
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  width: 10,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            QuestionWidgetWithColumnAndListTile(
              title: 'Irina',
              subtitle: 'Посоветуйте каким гель-лаком пользоваться?',
              avatar: Assets.images.irina.path,
            ),
            const SizedBox(
              height: 10,
            ),
            QuestionWidgetWithColumnAndListTile(
              title: 'Анонимно',
              subtitle: 'Посоветуйте каким гель-лаком пользоваться?',
              avatar: Assets.icons.account.path,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
