import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:w_sharme_beauty/core/router/router.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/comment/presentation/bloc/comment_list_bloc/comment_list_bloc.dart';
import 'package:w_sharme_beauty/features/post/presentation/bloc/post_list_bloc/post_list_bloc.dart';
import 'package:w_sharme_beauty/features/post/presentation/widgets/post_card_widget.dart';
import 'package:w_sharme_beauty/features/profile/presentation/bloc/my_profile_info_bloc/my_profile_info_bloc.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<PostListBloc>().add(const PostListEvent.getPosts());
  }

  @override
  Widget build(BuildContext context) {
    final route = GoRouter.of(context);
    return GlScaffold(
      appBar: GlAppBar(
        leading: Row(
          children: [
            BlocBuilder<MyProfileInfoBloc, MyProfileInfoState>(
              builder: (context, state) {
                return state.maybeWhen(
                  succes: (profile) => ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(14),
                    ),
                    child: GlCachedNetworImage(
                      height: 28.h,
                      width: 28.w,
                      urlImage: profile.profilePictureUrl,
                    ),
                  ),
                  error: () => GlCircleAvatar(
                    avatar: Assets.images.avatar.path,
                    width: 26.w,
                    height: 26.h,
                  ),
                  orElse: () => Container(),
                );
              },
            ),
            SizedBox(width: 16.w),
            CenterTitleAppBar(
              title: 'Главная',
              textStyle: AppStyles.w500f22,
            ),
          ],
        ),
        action: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                route.push('/home/${RouterContants.homeNotification}');
              },
              child: Assets.icons.bell.image(width: 26.w, height: 26.h),
            ),
            const SizedBox(width: 6),
            GestureDetector(
              onTap: () {
                route.push('/home/${RouterContants.chat}');
              },
              child: Assets.icons.chat.image(width: 26, height: 26),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: BlocBuilder<PostListBloc, PostListState>(

          builder: (context, state) {
            return state.maybeWhen(
              loading: () => ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => const PostShimmer(),
              ),
              error: (message) => Text('Ошибка: $message'),
              success: (posts) {
                return ListView.builder(
                  key: const PageStorageKey<String>('postsPage'),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (context, index) => PostCard(
                    onPressed: () {},
                    post: posts[index],
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
