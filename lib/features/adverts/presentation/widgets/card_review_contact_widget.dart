import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CardReviewContactWidget extends StatelessWidget {
  const CardReviewContactWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerRadiusWidget(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.location_on_sharp,
                color: Colors.grey,
              ),
              const SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('Адрес', style: AppStyles.w500f16),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Москва, ул. Тюлепина, 31',
                          style: AppStyles.w400f14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.phone,
                color: Colors.grey,
              ),
              const SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('Контакты', style: AppStyles.w500f16),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      Text(
                        '+7 (499) 110-53-23,',
                        style: AppStyles.w400f14.copyWith(
                          color: AppColors.purple,
                        ),
                      ),
                      Text(
                        '+7 (499) 110-53-23',
                        style: AppStyles.w400f14.copyWith(
                          color: AppColors.purple,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Assets.svgs.telegram.svg(),
                      ),
                      const SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {},
                        child: Assets.svgs.vk.svg(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 25),
           Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.access_time_filled_rounded,
                color: Colors.grey,
              ),
              const SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Часы работы', style: AppStyles.w500f16),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      Text(
                        'Открыто до 21:00',
                        style: AppStyles.w400f14,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
