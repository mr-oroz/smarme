import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:w_sharme_beauty/core/router/router_contants.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/communities/presentation/widgets/show_modal_bottom_sheet_widget.dart';
import 'package:w_sharme_beauty/features/communities/presentation/widgets/subscribers_list_tile_widget.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CommunitySubscribersPage extends StatelessWidget {
  const CommunitySubscribersPage({super.key});

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
          title: 'Подписчики',
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
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return SubscribersListTileWidget(
                    title: "Nasya",
                    subtitle: "с 12.02.2024",
                    avatar: Assets.images.irina.path,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (ctx) => ShowModalBottomSheetWidget(
                          text1: 'Назначить руководителем',
                          onTap1: () {
                            context.push(
                              '/communities/${RouterContants.communityEditManagers}',
                            );
                          },
                          text2: 'Удалить из сообщества',
                          onTap2: () {},
                        ),
                      );
                    },
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
