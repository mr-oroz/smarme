import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router_contants.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/communities/presentation/widgets/beauty_list_widget.dart';
import 'package:w_sharme_beauty/features/communities/presentation/widgets/my_beauty_list_widget.dart';
import 'package:w_sharme_beauty/features/communities/presentation/widgets/selection_form_field_widget.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CommunitiesPage extends StatefulWidget {
  const CommunitiesPage({super.key});

  @override
  State<CommunitiesPage> createState() => _CommunitiesPageState();
}

class _CommunitiesPageState extends State<CommunitiesPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final route = GoRouter.of(context);
    return GlScaffold(
      horizontalPadding: 16,
      appBar: GlAppBar(
        leading: Row(
          children: [
            GlCircleAvatar(
              avatar: Assets.images.avatar.path,
              width: 26,
              height: 26,
            ),
            const SizedBox(width: 16),
            Text(
              'Сообщество',
              style: AppStyles.w500f18,
            ),
          ],
        ),
        action: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                route.push('/communities/${RouterContants.communityCreate}');
              },
              child: Image.asset(
                Assets.icons.addCommunity.path,
                width: 26,
                height: 26,
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                route.push('/home/${RouterContants.chat}');
              },
              child: Image.asset(
                Assets.icons.chat.path,
                width: 26,
                height: 26,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SearchWidget(
            hintText: "Поиск сообществ",
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: SelectionFormFieldWidget(
                    hintText: "Мои сообществa",
                    text: "Мои сообществa",
                    text1: "Все сообществa",
                    hinttextStyle: TextStyle(color: AppColors.darkGrey),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: SizedBox(
                  child: SelectionFormFieldWidget(
                    hintText: "Категория",
                    text: "Маникюр",
                    text1: "Педикюр",
                    hinttextStyle: TextStyle(color: AppColors.darkGrey),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          GlTabBarWidget(
            tabController: _tabController,
            tabBarItem1: 'Все сообщества',
            tabBarItem2: 'Управляемые',
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                BeutyList.beautyList(),
                MyBeutyList.beautyList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
