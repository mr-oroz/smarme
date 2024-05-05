import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/utils/bottom_sheet_util.dart';
import 'package:w_sharme_beauty/core/widgets/custom_bottom_sheet_leading.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/card_message_widget.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/search_widget.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/text_field_send_message_widget.dart';
import 'package:w_sharme_beauty/features/communities/presentation/widgets/card_message__with_image_widget.dart';
import 'package:w_sharme_beauty/features/communities/presentation/widgets/text_field_widget_buttom_sheet.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/text_field_widget_with_title.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CommunityLeoMonicChatPage extends StatefulWidget {
  const CommunityLeoMonicChatPage({super.key});

  @override
  State<CommunityLeoMonicChatPage> createState() =>
      _CommunityLeoMonicChatPageState();
}

class _CommunityLeoMonicChatPageState extends State<CommunityLeoMonicChatPage> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    final router = GoRouter.of(context);
    return GlScaffold(
      appBar: GlAppBar(
        leading: GlIconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            router.pop();
          },
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CenterTitleAppBar(
              title: 'Чат сообщества LeoMonic',
              textStyle:
                  AppStyles.w500f16.copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              '25 участников',
              style: AppStyles.w400f14.copyWith(color: AppColors.grey),
            ),
          ],
        ),
        action: GestureDetector(
          onTap: () {
            BottomSheetUtil.showAppBottomSheet(
              context,
              CustomBottomSheetLeading(
                maxHeight: 0.5,
                navbarTitle: 'Управление сообществом',
                widget: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.white,
                  ),
                  child: GlScaffold(
                    horizontalPadding: 16,
                    body: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFieldWidgetWithTitle(
                            filled: false,
                            prefixIcon: Image.asset(Assets.icons.edit.path),
                            title: 'Основное',
                            hintText: 'Редактировать сообщество',
                            hintStyle: AppStyles.w400f16.copyWith(
                              color: AppColors.black,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                router.push(
                                  '/communities/${RouterContants.communityEdit}',
                                );
                              },
                              icon: const Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                          TextFieldWidgetWithTitle(
                            filled: false,
                            prefixIcon: Image.asset(Assets.icons.managers.path),
                            title: 'Участники',
                            hintText: 'Руководители',
                            hintStyle: AppStyles.w400f16.copyWith(
                              color: AppColors.black,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                router.push(
                                  '/communities/${RouterContants.communityManagers}',
                                );
                              },
                              icon: const Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                          TextFieldWidgetButtomSheet(
                            filled: false,
                            prefixIcon:
                                Image.asset(Assets.icons.subscribers.path),
                            hintText: 'Подписчики',
                            hintStyle: AppStyles.w400f16.copyWith(
                              color: AppColors.black,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                router.push(
                                  '/communities/${RouterContants.communitySubscribers}',
                                );
                              },
                              icon: const Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                          TextFieldWidgetWithTitle(
                            filled: false,
                            prefixIcon:
                                Image.asset(Assets.icons.addPeople.path),
                            title: 'Приглашение',
                            hintText: 'Пригласить людей в чат',
                            hintStyle: AppStyles.w400f16.copyWith(
                              color: AppColors.black,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                BottomSheetUtil.showAppBottomSheet(
                                  context,
                                  CustomBottomSheetLeading(
                                    maxHeight: 0.7,
                                    navbarTitle: "Пригласить людей в чат",
                                    widget: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                      ),
                                      child: Column(
                                        children: [
                                          const SearchWidget(),
                                          const SizedBox(height: 10),
                                          SizedBox(
                                            height: 90,
                                            child: ListView.separated(
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder: (context, index) =>
                                                  Column(
                                                children: [
                                                  GlCircleAvatar(
                                                    avatar:
                                                        Assets.images.ava.path,
                                                    width: 50,
                                                    height: 50,
                                                  ),
                                                  const SizedBox(height: 10),
                                                   Text(
                                                    'Luda',
                                                    style: AppStyles.w500f18,
                                                  ),
                                                ],
                                              ),
                                              separatorBuilder:
                                                  (buildContext, x) {
                                                return const SizedBox(
                                                  width: 20,
                                                );
                                              },
                                              itemCount: 5,
                                              // shrinkWrap: true,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          SizedBox(
                                            height: 240,
                                            child: ListView.separated(
                                              itemBuilder: (context, index) =>
                                                  Row(
                                                children: [
                                                  SizedBox(
                                                    width: 24,
                                                    height: 24,
                                                    child: Checkbox(
                                                      materialTapTargetSize:
                                                          MaterialTapTargetSize
                                                              .shrinkWrap,
                                                      visualDensity:
                                                          const VisualDensity(
                                                        horizontal: -4,
                                                        vertical: -4,
                                                      ),
                                                      activeColor:
                                                          AppColors.purple,
                                                      shape: const CircleBorder(
                                                        side: BorderSide(
                                                          color:
                                                              AppColors.purple,
                                                        ),
                                                      ),
                                                      value: isSelected,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          isSelected = value!;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Image.asset(
                                                    Assets.images.nasya.path,
                                                    width: 50,
                                                    height: 50,
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Text(
                                                    'Luda',
                                                    style: AppStyles.w500f18,
                                                  ),
                                                ],
                                              ),
                                              separatorBuilder:
                                                  (buildContext, x) {
                                                return const SizedBox(
                                                  height: 10,
                                                );
                                              },
                                              itemCount: 5,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor: AppColors.purple,
                                              minimumSize:
                                                  const Size.fromHeight(50),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            onPressed: () {},
                                            // isSelected ? () {} : null,
                                            child: const Text(
                                              "Готово",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          child: GlCircleAvatar(
            avatar: Assets.images.nastya.path,
            width: 40,
            height: 40,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 18,
            right: 18,
            bottom: 4,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              CardMessageWidget(
                check: false,
                username: 'Nastya',
                message: 'Опишите Ваше состояние, что Вас беспокоит? ',
                date: '00:49',
                avatar: Assets.images.nastya.path,
              ),
              const SizedBox(height: 15),
              const CardMessageWidget(
                check: true,
                message: 'Здравствуйте, болит живот? ',
                date: '00:49',
              ),
              const SizedBox(height: 15),
              CardMessageWidget(
                check: false,
                username: 'Elena',
                message: 'Опишите Ваше состояние, что Вас беспокоит? ',
                date: '00:49',
                avatar: Assets.images.nastii.path,
              ),
              const SizedBox(height: 15),
              CardMessageWithImageWidget(
                username: 'Sasha',
                date: '00:49',
                image: Assets.images.mainPicture.path,
                check: false,
                avatar: Assets.images.nastya.path,
              ),
            ],
          ),
        ),
      ),
      bottomBar: const TextFieldSendMessageWidget(),
    );
  }
}
