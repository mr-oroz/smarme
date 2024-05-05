import 'package:flutter/material.dart';

import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class CustomBottomSheetCenterTitle extends StatelessWidget {
  const CustomBottomSheetCenterTitle({
    super.key,
    this.onTap1,
    this.onTap2,
    required this.navbarTitle1,
    required this.navbarTitle2,
    this.maxHeight,
  });
  final Function()? onTap1;
  final Function()? onTap2;
  final String navbarTitle1;
  final String navbarTitle2;

  final double? maxHeight;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: maxHeight ?? 0.25,
      maxChildSize: maxHeight ?? 0.4,
      expand: false,
      builder: (_, controller) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 24),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 15),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.6,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: onTap1,
                      child: Text(
                        navbarTitle1,
                        style: AppStyles.w500f18.copyWith(
                          color: AppColors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(bottom: 15),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.6,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: onTap2,
                      child: Text(
                        navbarTitle2,
                        style: AppStyles.w500f18.copyWith(
                          color: AppColors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  height: 47,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: AppColors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Отменить",
                      style: AppStyles.w500f16.copyWith(
                        color: AppColors.purple,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
