import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/features/main/data/data_source/bottom_navigation_bar_item_list.dart';
class GlBottomNavigationBar extends StatelessWidget {
  const GlBottomNavigationBar({super.key, required this.onSelected, required this.selectedIndex});
  final ValueChanged<int> onSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: AppStyles.w500f12,
      selectedLabelStyle: AppStyles.w500f12.copyWith(color: AppColors.grey),
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.purple,
      currentIndex: selectedIndex,
      onTap: onSelected,
      items: List.generate(
        items.length,
        (index) {
          final item = items[index];
          return BottomNavigationBarItem(
            icon: item.image,
            activeIcon: item.activeImage,
            label: item.text,
          );
        },
      ),
    );
  }
}
