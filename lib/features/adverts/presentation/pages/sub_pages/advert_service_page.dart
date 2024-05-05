import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/features/adverts/presentation/widgets/widgets.dart';

class AdverServicePage extends StatelessWidget {
  const AdverServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 15),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 18),
          decoration: const BoxDecoration(
            color: AppColors.white,
          ),
          child: const CardPriceListWidget(
            title: 'Маникюр',
            text: 'Маникюр аппаратный/комбинированный/классический',
            price: '1050',
            text2: 'Мужской маникюр',
            desc: 'В стоимость входит: форма ногтей, обработка вокруг ногтей: кутикулы и валиков.',
            price2: '1050',
            desc2: 'до 1050 ₽',
          ),
        ),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 18),
          decoration: const BoxDecoration(
            color: AppColors.white,
          ),
          child: const CardPriceListWidget(
            title: 'Дизайн',
            text: 'Дизайн одного ногтя (ручная роспись)',
            desc: 'до 350',
            price: '100',
            text2: 'Френч (классический, обратный, лучный)',
            price2: '1000',
          ),
        ),
      ],
    );
  }
}
