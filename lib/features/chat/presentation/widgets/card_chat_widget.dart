import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CardChatWidget extends StatelessWidget {
  const CardChatWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return GestureDetector(
      onTap: () {
        router.push(
            '/home/chat/${RouterContants.chatMessages}',);
      },
      child: Container(
        height: 74,
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserAvatarWithName(
              width: 63,
              height: 63,
              avatar: Assets.images.avatar.path,
              name: 'Bella',
              subTitle: 'Привет, как дела?',
            ),
            const MessageCheckTimeTextWidget(),
          ],
        ),
      ),
    );
  }
}
