import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w_sharme_beauty/core/di/injector.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/core/utils/bottom_sheet_util.dart';
import 'package:w_sharme_beauty/core/widgets/widgets.dart';
import 'package:w_sharme_beauty/features/comment/presentation/bloc/comment_list_bloc/comment_list_bloc.dart';
import 'package:w_sharme_beauty/features/comment/presentation/widgets/comment_bottom_sheet.dart';
import 'package:w_sharme_beauty/features/post/domain/entities/post.dart';
import 'package:w_sharme_beauty/features/post/presentation/bloc/post_like_bloc/post_like_bloc.dart';
import 'package:w_sharme_beauty/features/post/presentation/widgets/post_icons_widget.dart';
import 'package:w_sharme_beauty/features/post/presentation/widgets/post_image.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

final FirebaseAuth firebaseAuth = getIt<FirebaseAuth>();

class PostCard extends StatefulWidget {
  const PostCard({
    super.key,
    this.onPressed,
    this.index,
    this.post,
    this.show = 'hide',
  });

  final Post? post;
  final Function()? onPressed;
  final int? index;
  final String? show;
  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLike = false;
  int countLike = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      isLike = widget.post!.likes.contains(firebaseAuth.currentUser!.uid);
      countLike = widget.post!.likes.length;
    });
    //context
    //    .read<CommentListBloc>()
    //    .add(CommentListEvent.getComments(postId: widget.post!.postId));
  }

  void toggleLike() {
    final authorId = firebaseAuth.currentUser!.uid;
    final postId = widget.post!.postId.toString();
    final bool newLikeStatus = !isLike;
    if (isLike) {
      context.read<PostLikeBloc>().add(PostLikeEvent.dislike(postId, authorId));
      countLike = countLike - 1;
    } else {
      context.read<PostLikeBloc>().add(PostLikeEvent.like(postId, authorId));
      countLike = countLike + 1;
    }
    if (mounted) {
      setState(() {
        isLike = newLikeStatus;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final postId = widget.post!.postId;
    return Container(
      margin: EdgeInsets.only(bottom: 16, top: widget.index == 0 ? 16 : 0),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: UserAvatarWithName(
                  avatar: widget.post!.avatarUrl,
                  width: 40.w,
                  height: 40.h,
                  name: widget.post!.username.toString(),
                  subTitle: widget.post!.createdAt.toString(),
                ),
              ),
              if (firebaseAuth.currentUser!.uid == widget.post!.authorId)
                const Icon(Icons.more_horiz)
              else
                const Flexible(
                  child: GlSubscribeButton(),
                ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            widget.post!.text,
            style: AppStyles.w400f16,
          ),
          if (widget.post != null && widget.post!.imageUrls.isNotEmpty)
            const SizedBox(height: 6),
          if (widget.post != null && widget.post!.imageUrls.isNotEmpty)
            PostImage(
              imageUrls: widget.post!.imageUrls,
            ),
          const SizedBox(height: 6),
          Row(
            children: [
              PostIconsWidget(
                onPessed: toggleLike,
                icon: isLike
                    // ignore: deprecated_member_use_from_same_package
                    ? Assets.svgs.likeRound.svg(color: Colors.red)
                    : Assets.svgs.like.svg(),
                text: countLike.toString(),
              ),
              const SizedBox(width: 6),
              //if (widget.show == 'hide')
              PostIconsWidget(
                onPessed: () {
                  BottomSheetUtil.showAppBottomSheet(
                    context,
                    CommentBottomSheet(
                      postId: postId!,
                    ),
                  );
                },
                icon: Assets.svgs.comment.svg(),
                text: '0',
              ),
              const SizedBox(width: 6),
              PostIconsWidget(
                onPessed: () {},
                icon: Assets.svgs.share.svg(),
                text: widget.post!.reposts.length.toString(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
