import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/pages/sub_pages/advert_grid_image_page.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/pages/sub_pages/advert_service_page.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/pages/sub_pages/sub_pages.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/widgets/widgets.dart';

class AdverDetailPage extends StatefulWidget {
  const AdverDetailPage({super.key});

  @override
  State<AdverDetailPage> createState() => _AdverDetailPageState();
}

class _AdverDetailPageState extends State<AdverDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          const Expanded(
            flex: 2,
            child: BgImageWidget(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: const BoxDecoration(
                color: AppColors.bgColors,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CardBlocNavbar(
                          title: 'Бонус',
                          desc:
                              'Ногтевая студия, Салон красоты, Парихмакерская',
                          rating: '4.2',
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Открыто до 22:00',
                              style: AppStyles.w400f14,
                            ),
                            Text(
                              '2 км.',
                              style: AppStyles.w400f14
                                  .copyWith(color: AppColors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Flexible(
                              child: GlButton(
                                style: AppStyles.w400f14.copyWith(
                                  color: AppColors.white,
                                ),
                                height: 40,
                                text: 'Написать',
                                onPressed: () {},
                              ),
                            ),
                            const SizedBox(width: 10),
                            Flexible(
                              child: GlOutlineButton(
                                title: 'Продолжить маршрут',
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        CustomTabbarWidget(
                          tabController: _tabController,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                        AdverReviewPage(),
                        AdverServicePage(),
                        AdverGridImagePage(),
                        Text('Отзывы'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
