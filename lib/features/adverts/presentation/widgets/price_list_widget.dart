import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/widgets/widgets.dart';

class PriceListWidget extends StatelessWidget {
  const PriceListWidget({
    super.key,
    required this.title,
    this.desc,
    required this.price,
  });
  final String title;
  final String? desc;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaddingHorizontalWidget(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  title,
                  style: AppStyles.w400f16,
                ),
              ),
              Text('$price ₽', style: AppStyles.w400f16),
            ],
          ),
        ),
        const SizedBox(height: 10),
        PaddingHorizontalWidget(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 4,
                child: Text(
                  desc ?? '',
                  style: AppStyles.w400f14.copyWith(
                    color: AppColors.grey,
                  ),
                ),
              ),
              const Flexible(child: SizedBox()),
            ],
          ),
        ),
      ],
    );
  }
}
