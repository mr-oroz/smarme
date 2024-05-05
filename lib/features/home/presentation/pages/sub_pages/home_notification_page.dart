import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/custom_container.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/home/data/data/data.dart';
import 'package:w_sharme_beauty/features/home/presentation/widgets/widgets.dart';

class HomeNotificationPage extends StatelessWidget {
  const HomeNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlScaffold(
      appBar: GlAppBar(
        leading: GlIconButton(
          iconSize: 16,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => context.pop(),
        ),
        title:  CenterTitleAppBar(
          title: 'Уведомления',
          textStyle: AppStyles.w500f22,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),
            CustomContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  notificationData.length,
                  (index) {
                    final item = notificationData[index];
                    return NotificationBookingCard(widget: item.widget, text: item.text);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
