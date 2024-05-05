
import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class BgImageWidget extends StatelessWidget {
  const BgImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        image: DecorationImage(
          image: AssetImage(Assets.images.adverBg.path),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Assets.images.beautyCenter.image(
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
