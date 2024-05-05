import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/custom_container.dart';
import 'package:w_sharme_beauty/core/widgets/profile_navbar_widget.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/profile/data/data/stories_data.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/stories_widget.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class ProfilePersonPage extends StatelessWidget {
  const ProfilePersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlScaffold(
      appBar: GlAppBar(
        leading: GlIconButton(
          iconSize: 16,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => context.pop(),
        ),
        title: CenterTitleAppBar(
          title: 'ManicAnna',
          textStyle: AppStyles.w500f22,
        ),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            CustomContainer(
              child: Column(
                children: [
                  ProfileNavbarWidget(
                    avatar: Assets.images.avatar.path,
                    publications: '23',
                    followers: '2442',
                    subscriptions: '51',
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text("Anna Smirnova", style: AppStyles.w500f18),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(Assets.icons.point.path),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        Assets.icons.rating.path,
                      ),
                    ],
                  ),
                  const SizedBox(height: 11),
                  Row(
                    children: [
                      Image.asset(Assets.icons.location.path),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Москва, Россия",
                        style: AppStyles.w400f16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Привет я Анна, я из города Москва. Занимаюсь маникюром более 10 лет. Успей записаться на выходные!",
                    style: AppStyles.w400f14,
                  ),
                  const SizedBox(height: 16),
                  StoriesWidget(storiesModel: storiesModel),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GlButton(
                        text: 'Подписаться',
                        onPressed: () {},
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      GlButton(
                        text: 'Написать',
                        onPressed: () {},
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Column(
            //  children: List.generate(
            //    posts.length,
            //    (index) => PostCard(onPressed: () {}),
            //  ),
            //),
          ],
        ),
      ),
    );
  }
}
