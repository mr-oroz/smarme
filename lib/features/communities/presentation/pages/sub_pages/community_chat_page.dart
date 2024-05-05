import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router_contants.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/utils/bottom_sheet_util.dart';
import 'package:w_sharme_beauty/core/widgets/custom_bottom_sheet_leading.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/search_widget.dart';
import 'package:w_sharme_beauty/features/communities/data/model/chat_subscribers_model.dart';
import 'package:w_sharme_beauty/features/communities/presentation/widgets/subscribers_list_tile_widget.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CommunityChatPage extends StatefulWidget {
  const CommunityChatPage({
    super.key,
  });

  @override
  State<CommunityChatPage> createState() => _CommunityChatPageState();
}

class _CommunityChatPageState extends State<CommunityChatPage> {
  //ChatSubscribersModel chatSubscribersModel;
  List<ChatSubscribersModel> chatSubscribers = [];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return GlScaffold(
      horizontalPadding: 16,
      appBar: GlAppBar(
        leading: GlIconButton(
          iconSize: 16,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => context.pop(),
        ),
        title: CenterTitleAppBar(
          title: 'Чаты',
          textStyle: AppStyles.w500f18,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Чаты сообщества",
            style: AppStyles.w500f14.copyWith(color: AppColors.darkGrey),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              GlCircleAvatar(
                avatar: Assets.icons.addChat.path,
                width: 50,
                height: 50,
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  BottomSheetUtil.showAppBottomSheet(
                    context,
                    CustomBottomSheetLeading(
                      maxHeight: 0.7,
                      navbarTitle: "Создать группу",
                      widget: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            const SearchWidget(),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 90,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Column(
                                  children: [
                                    GlCircleAvatar(
                                      avatar: Assets.images.ava.path,
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
                                separatorBuilder: (bContext, x) {
                                  return const SizedBox(width: 20);
                                },
                                itemCount: 5,
                                // shrinkWrap: true,
                              ),
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              height: 240,
                              child: ListView.separated(
                                itemBuilder: (context, index) => Row(
                                  children: [
                                    const SizedBox(width: 10),
                                    Image.asset(
                                      Assets.images.ava.path,
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
                                separatorBuilder: (buildContext, y) {
                                  return const SizedBox(height: 10);
                                },
                                itemCount: 5,
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: AppColors.purple,
                                minimumSize: const Size.fromHeight(50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                BottomSheetUtil.showAppBottomSheet(
                                  context,
                                  CustomBottomSheetLeading(
                                    maxHeight: 0.6,
                                    navbarTitle: "Создать группу",
                                    widget: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              DecoratedBox(
                                                decoration: BoxDecoration(
                                                  color: AppColors.lightGrey,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: SizedBox(
                                                  height: 47,
                                                  width: 47,
                                                  child: Image.asset(
                                                    Assets.images.camera.path,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 15),
                                              Expanded(
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                    hintText: 'Название чата',
                                                    filled: true,
                                                    fillColor:
                                                        AppColors.lightGrey,
                                                    labelStyle: const TextStyle(
                                                      color: AppColors.darkGrey,
                                                      fontSize: 14,
                                                    ),
                                                    border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        10,
                                                      ),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                      vertical: 5,
                                                      horizontal: 15,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            "Участники",
                                            style: AppStyles.w500f18.copyWith(
                                              color: AppColors.darkGrey,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          SizedBox(
                                            height: 240,
                                            child: ListView.separated(
                                              itemBuilder: (context, index) =>
                                                  Row(
                                                children: [
                                                  Image.asset(
                                                    Assets.images.irina.path,
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
                                                  (buildContext, a) {
                                                return const SizedBox(
                                                  height: 10,
                                                );
                                              },
                                              itemCount: 5,
                                              // shrinkWrap: true,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          GlButton(
                                            text: "Создать чат",
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              // isSelected ? () {} : null,
                              child: const Text(
                                "Продолжить",
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
                child: Text(
                  "Создать чат",
                  style: AppStyles.w400f16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SubscribersListTileWidget(
            title: "Комьюнити",
            subtitle: "152 участников",
            avatar: Assets.images.ava.path,
          ),
          const SizedBox(height: 10),
          SubscribersListTileWidget(
            title: "Чат сообщества LeaMonic",
            subtitle: "25 участников",
            avatar: Assets.images.nastya.path,
            onTap: () {
              router
                  .push('/communities/${RouterContants.communityLeoMonicChat}');
            },
          ),
          const Spacer(),
          GlButton(text: "Сохранить", onPressed: () {}),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
