import 'package:flutter/material.dart';

import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CardMessageWithImageWidget extends StatelessWidget {
  const CardMessageWithImageWidget({
    super.key,
    this.username,
    this.message,
    required this.date,
    this.avatar,
    required this.image,
    required this.check,
  });

  final String? username;
  final String? message;
  final String date;
  final String? avatar;
  final String image;
  final bool check;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment:
          check ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!check && avatar != null)
          GlCircleAvatar(
            avatar: avatar!,
            width: 30,
            height: 30,
          )
        else
          // ignore: deprecated_member_use_from_same_package
          Assets.svgs.checkDouble.svg(color: AppColors.purple),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment:
              check ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width * 0.75,
              padding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: check ? AppColors.purple : AppColors.lightGrey,
                borderRadius: check
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      )
                    : const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!check && username != null)
                    Text(
                      username!,
                      style:
                          AppStyles.w500f16.copyWith(color: AppColors.purple),
                    ),
                  Text(
                    message ?? "",
                    style: AppStyles.w500f16.copyWith(
                      color: check ? AppColors.white : AppColors.black,
                    ),
                  ),
                  Image.asset(
                    image,
                  ),
                ],
              ),
            ),
            Text(
              date,
              textAlign: TextAlign.end,
              style: AppStyles.w400f13
                  .copyWith(color: AppColors.grey, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
