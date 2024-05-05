import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/utils/bottom_sheet_util.dart';
import 'package:w_sharme_beauty/core/widgets/custom_bottom_sheet.dart';
import 'package:w_sharme_beauty/features/adverts/data/data/data.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/profile/data/data/stories_data.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/stories_widget.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  String filterText1 = 'Рейтинг';
  String filterText2 = 'Рядом';
  String filterText3 = 'Открыто';
  String selectedRating = '4,9';
  String selectedLocation = 'Рядом';
  String selectedWork = 'Круглосуточно';

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            'Категории',
            style: AppStyles.w500f18.copyWith(
              color: AppColors.grey,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: StoriesWidget(storiesModel: storiesModel),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              FilterButtonWidget(
                onPressed: () => BottomSheetUtil.showAppBottomSheet(
                  context,
                  CustomBottomSheet(
                    maxHeight: 0.65,
                    navbarTitle: 'Рейтинг',
                    widget: RadioFilterWidget(
                      list: ratingList,
                      onSelect: (String text) {
                        filterText1 = text;
                        selectedRating = text;
                        setState(() {});
                      }, selectedValue: selectedRating,
                    ),
                  ),
                ),
                title: filterText1,
              ),
              const SizedBox(width: 12),
              FilterButtonWidget(
                onPressed: () => BottomSheetUtil.showAppBottomSheet(
                  context,
                  CustomBottomSheet(
                    navbarTitle: 'Расстояние',
                    widget: RadioFilterWidget(
                      list: distanceList,
                      onSelect: (String text) {
                        filterText2 = text;
                        selectedLocation = text;
                        setState(() {});
                      }, selectedValue: selectedLocation,
                    ),
                  ),
                ),
                title: filterText2,
              ),
              const SizedBox(width: 12),
              FilterButtonWidget(
                onPressed: () => BottomSheetUtil.showAppBottomSheet(
                  context,
                  CustomBottomSheet(
                    navbarTitle: 'Время работы/Приема',
                    widget: RadioFilterWidget(
                      list: statusWorkList,
                      onSelect: (String text) {
                        filterText3 = text;
                        selectedWork = text;
                        setState(() {});
                      }, selectedValue: selectedWork,
                    ),
                  ),
                ),
                title: filterText3,
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const CardBlocAdvertsWidget(
          title: 'Бонус',
          desc: 'Ногтевая студия, Салон красоты, Парихмакерская',
          rating: '4.2',
        ),
        const SizedBox(height: 36),
        const CardBlocAdvertsWidget(
          title: 'Anna Ivanova',
          desc: 'Маникюр, Педикюр, ресницы',
          rating: '4.1',
        ),
        //const CardBlocAdvertsWidget(),
      ],
    );
  }
}
