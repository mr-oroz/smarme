import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CommunityManagersPage extends StatelessWidget {
  const CommunityManagersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlScaffold(
      horizontalPadding: 16,
      appBar: GlAppBar(
        leading: GlIconButton(
          iconSize: 16,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => context.pop(),
        ),
        title:  CenterTitleAppBar(
          title: 'Руководители',
          textStyle: AppStyles.w500f22,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),
            const SearchWidget(),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: GlCircleAvatar(
                      avatar: Assets.images.avatar.path,
                      width: 50,
                      height: 50,
                    ),
                    title:  Text("Nasya", style: AppStyles.w500f18),
                    subtitle: Text(
                      "с 12.02.2024",
                      style:
                          AppStyles.w400f16.copyWith(color: AppColors.darkGrey),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        // route.push('/communities/${RouterContants.communityProfile}');
                      },
                      child: Image.asset(
                        Assets.icons.moreHoriz.path,
                        width: 26,
                        height: 26,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
