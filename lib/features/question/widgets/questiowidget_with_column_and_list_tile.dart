import 'package:flutter/material.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/gl_circle_avatar.dart';

class QuestionWidgetWithColumnAndListTile extends StatelessWidget {
  const QuestionWidgetWithColumnAndListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.avatar,
  });
  final String title;
  final String subtitle;
  final String avatar;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: GlCircleAvatar(
            avatar: avatar,
            width: 46,
            height: 46,
          ),
          title: Text(
            title,
            style: AppStyles.w500f16.copyWith(fontWeight: FontWeight.w600),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                style: AppStyles.w400f13,
              ),
            ],
          ),
        ),
        const Row(
          children: [
            Text(
              'сегодня в 15:53',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "ответов 1   ответить",
              style: TextStyle(color: Colors.black87),
            ),
          ],
        ),
      ],
    );
  }
}
