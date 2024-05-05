import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router_contants.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/widgets/gl_cached_networ_image.dart';
import 'package:w_sharme_beauty/features/communities/presentation/bloc/community_list_bloc/community_list_bloc.dart';

class BeutyList extends StatefulWidget {
  const BeutyList.beautyList({super.key});

  @override
  State<BeutyList> createState() => _BeutyListState();
}

class _BeutyListState extends State<BeutyList> {
  @override
  void initState() {
    context
        .read<CommunityListBloc>()
        .add(const CommunityListEvent.getCommunities());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommunityListBloc, CommunityListState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => Container(),
          loading: () => const Center(
            child: CircularProgressIndicator(
              color: AppColors.purple,
            ),
          ),
          error: (error) => Center(
            child: Text(error),
          ),
          success: (data) {
            return ListView.builder(
              itemCount: data.length,
              itemExtent: 55,
              itemBuilder: (BuildContext context, int index) {
                final item = data[index];
                return GestureDetector(
                  onTap: () {
                    context.push(
                      '/communities/${RouterContants.communityProfileSubscribe}/${item.communityId}',
                    );
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(23),
                      ),
                      child: GlCachedNetworImage(
                        height: 46,
                        width: 46,
                        urlImage: item.avatarUrls,
                      ),
                    ),
                    title: Text(
                      item.communityName.toString(),
                      style: const TextStyle(
                        fontSize: 15.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      "${item.category}, ${item.participants!.length} участников",
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.darkGrey,
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
