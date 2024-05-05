
import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class MessageCheckTimeTextWidget extends StatelessWidget {
  const MessageCheckTimeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            const Icon(
              Icons.check,
              color: AppColors.purple,
            ),
            Text(
              '17:54',
              style: AppStyles.w500f14
                  .copyWith(color: AppColors.grey),
            ),
          ],
        ),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: AppColors.purple,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              '1',
              style: AppStyles.w400f14.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
        Container(),
      ],
    );
  }
}
