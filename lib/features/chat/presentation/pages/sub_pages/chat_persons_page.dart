import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:w_sharme_beauty/core/widgets/custom_container.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/widgets.dart';

class ChatPersonsPage extends StatelessWidget {
  const ChatPersonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomContainer(
        marginTop: 15,
        marginBottom: 15,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: List.generate(
            5,
            (index) => const CardChatWidget(),
          ),
        ),
      ),
    );
  }
}
