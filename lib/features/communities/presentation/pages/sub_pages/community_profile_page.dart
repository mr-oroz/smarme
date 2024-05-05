import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';

import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/utils/bottom_sheet_util.dart';
import 'package:w_sharme_beauty/core/widgets/custom_bottom_sheet_leading.dart';
import 'package:w_sharme_beauty/core/widgets/profile_navbar_widget.dart';

import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/communities/presentation/widgets/text_field_widget_buttom_sheet.dart';
import 'package:w_sharme_beauty/features/profile/data/data/stories_data.dart';

import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/container_widget.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/list_style_widget.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/stories_widget.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/text_field_widget_with_title.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CommunityProfilePage extends StatefulWidget {
  const CommunityProfilePage({super.key});

  @override
  State<CommunityProfilePage> createState() => _CommunityProfilePageState();
}

class _CommunityProfilePageState extends State<CommunityProfilePage> {
  List<String> contacts = [
    'John',
    'Alice',
    'Bob',
    'Eve',
    'Charlie',
    'David',
    'Grace',
    'Henry',
    'Fiona',
    'Kate',
  ];
  List<String> selectedContacts = [];

  bool _currentIndex = false;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final route = GoRouter.of(context);
    return GlScaffold(
      appBar: GlAppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title:  Text('Сообщество', style: AppStyles.w500f22),
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
                                route.push(
                                  '/communities/${RouterContants.communityEdit}',
                                );
                              },
                              icon: const Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                          TextFieldWidgetWithTitle(
                            filled: false,
                            prefixIcon: Image.asset(Assets.icons.message.path),
                            title: 'Общение',
                            hintText: 'Чаты',
                            hintStyle: AppStyles.w400f16.copyWith(
                              color: AppColors.black,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                route.push(
                                  '/communities/${RouterContants.communityChat}',
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
                                route.push(
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
                                route.push(
                                  '/communities/${RouterContants.communitySubscribers}',
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
          child: Image.asset(
            Assets.icons.settings.path,
            width: 26,
            height: 26,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                ProfileNavbarWidget(
                  avatar: Assets.images.ava.path,
                  publications: '23',
                  followers: '2422',
                  subscribeText: "Участники",
                  onPressedFollowers: () {
                    route.push(
                      '/communities/${RouterContants.communityMembers}',
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                 Text("Комьюнити", style: AppStyles.w500f18),
                const SizedBox(
                  height: 10,
                ),
                 Text(
                  "Всем привет, мы публикуем самые трендовые и красивые дизайны для твоего маникюра!",
                  style: AppStyles.w400f13,
                ),
                const SizedBox(
                  height: 10,
                ),
                StoriesWidget(storiesModel: storiesModel),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: AppColors.purple,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    // {
                    //   BottomSheetUtil.showAppBottomSheet(
                    //     context,
                    //     CustomBottomSheetLeading(
                    //       maxHeight: 0.7,
                    //       navbarTitle: "Создать группу",
                    //       widget: Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 16),
                    //         child: Column(
                    //           children: [
                    //             const SearchWidget(),
                    //             const SizedBox(height: 10),
                    //             SizedBox(
                    //               height: 90,
                    //               child: ListView.separated(
                    //                 scrollDirection: Axis.horizontal,
                    //                 itemBuilder: (context, index) => Column(
                    //                   children: [
                    //                     GlCircleAvatar(
                    //                       avatar: Assets.images.ava.path,
                    //                       width: 50,
                    //                       height: 50,
                    //                     ),
                    //                     const SizedBox(height: 10),
                    //                     const Text(
                    //                       'Luda',
                    //                       style: AppStyles.w500f18,
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 separatorBuilder: (bContext, x) {
                    //                   return const SizedBox(width: 20);
                    //                 },
                    //                 itemCount: 5,
                    //                 // shrinkWrap: true,
                    //               ),
                    //             ),
                    //             const SizedBox(height: 10),
                    //             SizedBox(
                    //               height: 240,
                    //               child: ListView.separated(
                    //                 itemBuilder: (context, index) => Row(
                    //                   children: [
                    //                     SizedBox(
                    //                       width: 24,
                    //                       height: 24,
                    //                       child: Checkbox(
                    //                         materialTapTargetSize:
                    //                             MaterialTapTargetSize
                    //                                 .shrinkWrap,
                    //                         visualDensity: const VisualDensity(
                    //                           horizontal: -4,
                    //                           vertical: -4,
                    //                         ),
                    //                         activeColor: AppColors.purple,
                    //                         shape: const CircleBorder(
                    //                           side: BorderSide(
                    //                             color: AppColors.purple,
                    //                           ),
                    //                         ),
                    //                         value: isSelected,
                    //                         onChanged: (value) {
                    //                           setState(() {
                    //                             isSelected = value!;
                    //                           });
                    //                         },
                    //                       ),
                    //                     ),
                    //                     const SizedBox(width: 10),
                    //                     Image.asset(
                    //                       Assets.images.ava.path,
                    //                       width: 50,
                    //                       height: 50,
                    //                     ),
                    //                     const SizedBox(width: 10),
                    //                     const Text(
                    //                       'Luda',
                    //                       style: AppStyles.w500f18,
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 separatorBuilder: (buildContext, y) {
                    //                   return const SizedBox(height: 10);
                    //                 },
                    //                 itemCount: 5,
                    //               ),
                    //             ),
                    //             const SizedBox(height: 20),
                    //             ElevatedButton(
                    //               style: ElevatedButton.styleFrom(
                    //                 elevation: 0,
                    //                 backgroundColor: AppColors.purple,
                    //                 minimumSize: const Size.fromHeight(50),
                    //                 shape: RoundedRectangleBorder(
                    //                   borderRadius: BorderRadius.circular(10),
                    //                 ),
                    //               ),
                    //               onPressed: () {
                    //                 BottomSheetUtil.showAppBottomSheet(
                    //                   context,
                    //                   CustomBottomSheetLeading(
                    //                     maxHeight: 0.6,
                    //                     navbarTitle: "Создать группу",
                    //                     widget: Padding(
                    //                       padding: const EdgeInsets.symmetric(
                    //                         horizontal: 16,
                    //                       ),
                    //                       child: Column(
                    //                         crossAxisAlignment:
                    //                             CrossAxisAlignment.start,
                    //                         children: [
                    //                           Row(
                    //                             children: [
                    //                               DecoratedBox(
                    //                                 decoration: BoxDecoration(
                    //                                   color:
                    //                                       AppColors.lightGrey,
                    //                                   borderRadius:
                    //                                       BorderRadius.circular(
                    //                                     10,
                    //                                   ),
                    //                                 ),
                    //                                 child: SizedBox(
                    //                                   height: 47,
                    //                                   width: 47,
                    //                                   child: Image.asset(
                    //                                     Assets
                    //                                         .images.camera.path,
                    //                                   ),
                    //                                 ),
                    //                               ),
                    //                               const SizedBox(width: 15),
                    //                               Expanded(
                    //                                 child: TextFormField(
                    //                                   decoration:
                    //                                       InputDecoration(
                    //                                     hintText:
                    //                                         'Название чата',
                    //                                     filled: true,
                    //                                     fillColor:
                    //                                         AppColors.lightGrey,
                    //                                     labelStyle:
                    //                                         const TextStyle(
                    //                                       color: AppColors
                    //                                           .darkGrey,
                    //                                       fontSize: 14,
                    //                                     ),
                    //                                     border:
                    //                                         OutlineInputBorder(
                    //                                       borderSide:
                    //                                           BorderSide.none,
                    //                                       borderRadius:
                    //                                           BorderRadius
                    //                                               .circular(
                    //                                         10,
                    //                                       ),
                    //                                     ),
                    //                                     contentPadding:
                    //                                         const EdgeInsets
                    //                                             .symmetric(
                    //                                       vertical: 5,
                    //                                       horizontal: 15,
                    //                                     ),
                    //                                   ),
                    //                                 ),
                    //                               ),
                    //                             ],
                    //                           ),
                    //                           const SizedBox(height: 10),
                    //                           Text(
                    //                             "Участники",
                    //                             style:
                    //                                 AppStyles.w500f18.copyWith(
                    //                               color: AppColors.darkGrey,
                    //                             ),
                    //                           ),
                    //                           const SizedBox(height: 10),
                    //                           SizedBox(
                    //                             height: 240,
                    //                             child: ListView.separated(
                    //                               itemBuilder:
                    //                                   (context, index) => Row(
                    //                                 children: [
                    //                                   Image.asset(
                    //                                     Assets
                    //                                         .images.irina.path,
                    //                                     width: 50,
                    //                                     height: 50,
                    //                                   ),
                    //                                   const SizedBox(width: 10),
                    //                                   const Text(
                    //                                     'Luda',
                    //                                     style:
                    //                                         AppStyles.w500f18,
                    //                                   ),
                    //                                 ],
                    //                               ),
                    //                               separatorBuilder:
                    //                                   (buildContext, a) {
                    //                                 return const SizedBox(
                    //                                   height: 10,
                    //                                 );
                    //                               },
                    //                               itemCount: 5,
                    //                               // shrinkWrap: true,
                    //                             ),
                    //                           ),
                    //                           const SizedBox(height: 20),
                    //                           GlButton(
                    //                             text: "Создать чат",
                    //                             onPressed: () {},
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 );
                    //               },
                    //               // isSelected ? () {} : null,
                    //               child: const Text(
                    //                 "Продолжить",
                    //                 style: TextStyle(
                    //                   color: Colors.white,
                    //                 ),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   );
                    // },
                    child: const Text(
                      "Создать чат",
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.lightPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      route.push(
                        '/communities/${RouterContants.communityAddPublic}',
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          Assets.icons.plus.path,
                          color: AppColors.purple,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Опубликовать",
                          style: TextStyle(
                            color: AppColors.purple,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                ListStileWidget(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(Assets.images.avatar.path),
                  ),
                  title: 'Elena Ivanovna',
                  subtitle: '22-март в 15:00',
                  trailing: const Icon(Icons.more_horiz),
                ),
                const SizedBox(height: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Нет ничего более удивительного',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Нет ничего более удивительного, чем мастерство маникюриста, который обладает умением превратить обычные ногти в истинные произведения искусства. Моя цель - не просто ухаживать за ногтями, но и придавать им индивидуальность, отражающую ваш стиль и характер.",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    ContainerWidget(
                      text: '221',
                      widget: GestureDetector(
                        onTap: () {
                          _onTabTapped();
                        },
                        child: _currentIndex
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                              ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidget(
                      onTap: () {},
                      widget: Image.asset(
                        Assets.icons.comment.path,
                        color: Colors.grey,
                      ),
                      text: '45',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidget(
                      onTap: () {},
                      text: '6',
                      widget: Image.asset(
                        Assets.icons.repost.path,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ListStileWidget(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(Assets.images.avatar.path),
                  ),
                  title: 'Elena Ivanovna',
                  subtitle: '22-март в 15:00',
                  trailing: const Icon(Icons.more_horiz),
                ),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Нет ничего более удивительного',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Image.asset(Assets.images.mainPicture.path),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    ContainerWidget(
                      text: '221',
                      widget: GestureDetector(
                        onTap: () {
                          _onTabTapped();
                        },
                        child: _currentIndex
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                              ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidget(
                      onTap: () {},
                      widget: Image.asset(
                        Assets.icons.comment.path,
                        color: Colors.grey,
                      ),
                      text: '45',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ContainerWidget(
                      onTap: () {},
                      text: '6',
                      widget: Image.asset(
                        Assets.icons.repost.path,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTabTapped() {
    setState(() {
      _currentIndex = !_currentIndex;
    });
  }
}
