import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class CustomTabbarWidget extends StatelessWidget {
  const CustomTabbarWidget({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabAlignment: TabAlignment.start,
      physics: const NeverScrollableScrollPhysics(),
      isScrollable: true,
      labelColor: AppColors.purple,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: 14,
      ),
      labelStyle: AppStyles.w400f16.copyWith(fontSize: 15),
      controller: tabController,
      indicatorColor: AppColors.purple,
      dividerColor: Colors.transparent,
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      tabs: const [
        Text('Обзор'),
        Text('Товары и услуги'),
        Text('Фото'),
        Text('Отзывы'),
      ],
    );
  }
}
