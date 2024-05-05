import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w_sharme_beauty/core/widgets/gl_cached_networ_image.dart';
import 'package:w_sharme_beauty/features/comment/domain/entities/comment.dart';
import 'package:w_sharme_beauty/features/comment/presentation/bloc/reply_comment_list_bloc/reply_comment_list_bloc.dart';

import 'package:w_sharme_beauty/features/home/presentation/widgets/widgets.dart';
import 'package:w_sharme_beauty/gen/assets.gen.dart';

class CommentBookingCard extends StatefulWidget {
  const CommentBookingCard({
    super.key,
    required this.avatar,
    required this.item,
    required this.onPressed,
    required this.postId,
  });
  final String avatar;
  final Comment item;
  final Function() onPressed;
  final String postId;
  @override
  State<CommentBookingCard> createState() => _CommentBookingCardState();
}

class _CommentBookingCardState extends State<CommentBookingCard> {
  @override
  void initState() {
    context.read<ReplyCommentListBloc>().add(
          ReplyCommentListEvent.getReplyComments(
            postId: widget.postId,
            parentCommentId: widget.item.parentCommentId,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: GlCachedNetworImage(
                  height: 40.h,
                  width: 40.w,
                  urlImage: widget.avatar,
                ),
              ),
            ),
            Flexible(
              flex: 8,
              child: CommentItem(
                username: widget.item.username.toString(),
                comment: widget.item.comment.toString(),
                data: 'сегодня в 15:53',
                like: '0',
                onPressedComment: widget.onPressed,
                onPressedLike: () {},
              ),
            ),
            Flexible(
              child: Image(
                width: 16,
                height: 16,
                image: AssetImage(
                  Assets.icons.heart.path,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        BlocBuilder<ReplyCommentListBloc, ReplyCommentListState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (comment) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                    ),
                    Flexible(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        child: GlCachedNetworImage(
                          height: 40.h,
                          width: 40.w,
                          urlImage: widget.avatar,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 8,
                      child: CommentItem(
                        username: '',
                        comment: widget.item.comment.toString(),
                        data: 'сегодня в 15:53',
                        like: '0',
                        onPressedComment: widget.onPressed,
                        onPressedLike: () {},
                      ),
                    ),
                    Flexible(
                      child: Image(
                        width: 16,
                        height: 16,
                        image: AssetImage(
                          Assets.icons.heart.path,
                        ),
                      ),
                    ),
                  ],
                );
              },
              orElse: () => Container(),
            );
          },
        ),
      ],
    );
  }
}
