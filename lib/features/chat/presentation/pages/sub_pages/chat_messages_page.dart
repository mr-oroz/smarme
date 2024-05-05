import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/card_message_widget.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/text_field_send_message_widget.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class ChatMessagesPage extends StatelessWidget {
  const ChatMessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return GlScaffold(
      appBar: GlAppBar(
        leading: GlIconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            router.pop();
          },
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CenterTitleAppBar(
              title: 'Nastya',
              textStyle: AppStyles.w500f16,
            ),
            Text(
              'был(а) вчера в 23:42',
              style: AppStyles.w400f14.copyWith(color: AppColors.grey),
            ),
          ],
        ),
        action: GestureDetector(
          onTap: () {
            router.pushReplacement(
              '/home/chat/${RouterContants.chatMessages}/${RouterContants.profilePersonPage}',
            );
          },
          child: GlCircleAvatar(
            avatar: Assets.images.avatar.path,
            width: 40,
            height: 40,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 18,
            right: 18,
            bottom: 4,
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              CardMessageWidget(
                check: false,
                username: 'Nastya',
                message: 'Опишите Ваше состояние, что Вас беспокоит? ',
                date: '00:49',
                avatar: Assets.images.avatar.path,
              ),
              const CardMessageWidget(
                check: true,
                message: 'Опишите Ваше состояние, что Вас беспокоит? ',
                date: '00:49',
              ),
              const CardMessageWidget(
                check: true,
                message: 'Опишите Ваше состояние, что Вас беспокоит? ',
                date: '00:49',
              ),
              CardMessageWidget(
                check: false,
                username: 'Nastya',
                message: 'Опишите Ваше состояние, что Вас беспокоит? ',
                date: '00:49',
                avatar: Assets.images.avatar.path,
              ),
            ],
          ),
        ),
      ),
      bottomBar: const TextFieldSendMessageWidget(),
    );
  }
}
