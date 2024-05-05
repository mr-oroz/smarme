import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/utils/bottom_sheet_util.dart';
import 'package:w_sharme_beauty/core/widgets/custom_bottom_sheet.dart';
import 'package:w_sharme_beauty/core/widgets/gl_scaffold.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class AdvertsPage extends StatefulWidget {
  const AdvertsPage({super.key});

  @override
  State<AdvertsPage> createState() => _AdvertsPageState();
}

class _AdvertsPageState extends State<AdvertsPage> {
  @override
  Widget build(BuildContext context) {
    return GlScaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.images.map.path,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 50),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: const SearchWidget(),
                  ),
                  const MapButtonsWidget(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Объявления',
                          style: AppStyles.w500f22,
                        ),
                        const SizedBox(height: 19),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButtonTextWidget(
                              text: 'Поиск',
                              icon: const Icon(Icons.search),
                              onPressed: () =>
                                  BottomSheetUtil.showAppBottomSheet(
                                context,
                                const CustomBottomSheet(
                                  maxHeight: 0.7,
                                  navbarTitle: 'Объявления',
                                  widget: CategoriesWidget(),
                                ),
                              ),
                            ),
                            IconButtonTextWidget(
                              text: 'Мои',
                              icon:
                                  Assets.icons.ads.image(height: 24, width: 24),
                              onPressed: () {},
                            ),
                            IconButtonTextWidget(
                              text: 'Создать',
                              icon: const Icon(Icons.add_circle_outline),
                              onPressed: () {},
                            ),
                          ],
                        ),
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
