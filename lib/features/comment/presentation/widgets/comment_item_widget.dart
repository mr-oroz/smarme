import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
    required this.comment,
    required this.data,
    required this.like,
    required this.username,
    required this.onPressedComment,
    required this.onPressedLike,
  });

  final String comment;
  final String data;
  final String like;
  final String username;

  final Function() onPressedComment;
  final Function() onPressedLike;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          username,
          style: AppStyles.w500f16,
        ),
        Text(
          comment,
          style: AppStyles.w400f16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data,
              style: AppStyles.w400f14.copyWith(color: AppColors.grey),
            ),
            GestureDetector(
              onTap: onPressedLike,
              child: Text(
                'Нравится: $like',
                style: AppStyles.w400f14,
              ),
            ),
            GestureDetector(
              onTap: onPressedComment,
              child: Text(
                'Ответить',
                style: AppStyles.w400f14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
