import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';

class CustomBottomSheetLeading extends StatelessWidget {
  const CustomBottomSheetLeading({
    super.key,
    required this.navbarTitle,
    required this.widget,
    this.maxHeight,
  });

  final String navbarTitle;
  final Widget widget;
  final double? maxHeight;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: maxHeight ?? 0.4,
      maxChildSize: maxHeight ?? 0.4,
      expand: false,
      builder: (_, controller) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 24),
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
              Container(
                padding: const EdgeInsets.only(bottom: 15),
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      GlIconButton(
                        iconSize: 16,
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () => context.pop(),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            navbarTitle,
                            style: AppStyles.w500f18.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  controller: controller,
                  children: [
                    widget,
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
