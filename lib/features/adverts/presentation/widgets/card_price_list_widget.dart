
import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/widgets/widgets.dart';

class CardPriceListWidget extends StatelessWidget {
  const CardPriceListWidget({
    super.key,
    required this.title,
    required this.text,
    required this.price,
    this.desc,
    required this.text2,
    required this.price2,
    this.desc2,
  });

  final String title;
  final String text;
  final String price;
  final String? desc;
  final String text2;
  final String price2;
  final String? desc2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PaddingHorizontalWidget(
          child: Text(
            title,
            style: AppStyles.w500f18.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 15),
        PriceListWidget(
          title: text,
          desc: desc,
          price: price,
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.grey, width: 0.2),
            ),
          ),
        ),
        const SizedBox(height: 15),
        PriceListWidget(
          title: text2,
          desc: desc2,
          price: price2,
        ),
      ],
    );
  }
}
