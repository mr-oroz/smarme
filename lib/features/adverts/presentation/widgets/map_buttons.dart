import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';

class MapButtonsWidget extends StatelessWidget {
  const MapButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 18),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 12),
          Container(
            margin: const EdgeInsets.only(right: 18),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 100),
          Container(
            margin: const EdgeInsets.only(right: 18),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Transform.rotate(
              angle: 40 * 3.141592653589793238462643383 / 180,
              child: const Icon(Icons.navigation_rounded),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
