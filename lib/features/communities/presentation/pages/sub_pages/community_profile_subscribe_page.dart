import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/profile_navbar_widget.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/communities/presentation/bloc/community_detail_bloc/community_detail_bloc.dart';
import 'package:w_sharme_beauty/features/communities/presentation/widgets/for_the_user_buttons_widget.dart';
import 'package:w_sharme_beauty/features/profile/data/data/stories_data.dart';
import 'package:w_sharme_beauty/features/profile/presentation/pages/widgets/stories_widget.dart';

class CommunityProfileSubscribePage extends StatefulWidget {
  const CommunityProfileSubscribePage({super.key, this.communityId});

  final String? communityId;
  @override
  State<CommunityProfileSubscribePage> createState() =>
      _CommunityProfileSubscribePageState();
}

class _CommunityProfileSubscribePageState
    extends State<CommunityProfileSubscribePage> {
  @override
  void initState() {
    super.initState();
    context.read<CommunityDetailBloc>().add(
          CommunityDetailEvent.loaded(widget.communityId),
        );
  }

  @override
  Widget build(BuildContext context) {
    return GlScaffold(
      appBar: GlAppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 16,
          ),
        ),
        title: Text('Сообщество', style: AppStyles.w500f22),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<CommunityDetailBloc, CommunityDetailState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.purple,
                      ),
                    ),
                  ),
                ],
              ),
              error: (error) => Container(),
              success: (community) {
                return SafeArea(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 15,
                    ),
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileNavbarWidget(
                          avatar: community.avatarUrls.toString(),
                          publications: '23',
                          followers: '${community.participants!.length}',
                          subscribeText: "Участники",
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${community.communityName}",
                          style: AppStyles.w500f18,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${community.description}",
                          style: AppStyles.w400f13,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        StoriesWidget(storiesModel: storiesModel),
                        const SizedBox(
                          height: 10,
                        ),
                        const ForTheUserButtonsWidget(),
                      ],
                    ),
                  ),
                );
              },
              orElse: () => Container(),
            );
          },
        ),
      ),
    );
  }
}
