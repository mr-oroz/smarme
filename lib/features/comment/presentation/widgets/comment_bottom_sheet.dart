import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w_sharme_beauty/core/theme/app_colors.dart';
import 'package:w_sharme_beauty/core/theme/app_styles.dart';
import 'package:w_sharme_beauty/features/chat/presentation/widgets/text_field_send_message_widget.dart';
import 'package:w_sharme_beauty/features/comment/domain/entities/comment.dart';
import 'package:w_sharme_beauty/features/comment/presentation/bloc/add_reply_comment/add_reply_comment_bloc.dart';
import 'package:w_sharme_beauty/features/comment/presentation/bloc/comment_create_bloc/comment_create_bloc.dart';
import 'package:w_sharme_beauty/features/comment/presentation/bloc/comment_list_bloc/comment_list_bloc.dart';
import 'package:w_sharme_beauty/features/comment/presentation/widgets/widgets.dart';

class CommentBottomSheet extends StatefulWidget {
  const CommentBottomSheet({super.key, required this.postId});

  final String postId;

  @override
  State<CommentBottomSheet> createState() => _CommentBottomSheetState();
}

class _CommentBottomSheetState extends State<CommentBottomSheet> {
  final TextEditingController commentController = TextEditingController();
  bool isFound = false;
  String? username;
  String? parentCommentId;

  @override
  void initState() {
    context
        .read<CommentListBloc>()
        .add(CommentListEvent.getComments(postId: widget.postId));
    super.initState();
  }

  @override
  void dispose() {
    commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      maxChildSize: 0.8,
      expand: false,
      builder: (_, controller) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 15),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.6,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: [
                      Container(
                        height: 2,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Коментарии',
                        style: AppStyles.w400f16.copyWith(),
                      ),
                    ],
                  ),
                ),
              ),
              CommentList(
                onPressed: (Comment comment) {
                  setState(() {
                    isFound = true;
                    username = comment.username;
                    parentCommentId = comment.commentId;
                  });
                  commentController.text = comment.username.toString();
                },
                postId: widget.postId,
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Column(
                  children: [
                    if (isFound)
                      Container(
                        height: 50,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                          vertical: 5,
                        ),
                        decoration: const BoxDecoration(
                          color: AppColors.lightGrey,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(username.toString()),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFound = false;
                                  username = null;
                                  parentCommentId = null;
                                  commentController.clear();
                                });
                              },
                              child: const Icon(
                                Icons.close,
                                size: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    SizedBox(height: 5.h),
                    TextFieldSendMessageWidget(
                      show: 'show',
                      controller: commentController,
                      onPressed: () {
                        if (commentController.text.isNotEmpty) {
                          if (isFound) {
                            context.read<AddReplyCommentBloc>().add(
                                  AddReplyCommentEvent.addReplyComment(
                                    Comment(
                                      comment: commentController.text,
                                    ),
                                    parentCommentId.toString(),
                                    widget.postId,
                                  ),
                                );
                            setState(() {
                              isFound = false;
                              username = null;
                              parentCommentId = null;
                            });
                          } else {
                            context.read<CommentCreateBloc>().add(
                                  CommentCreateEvent.addComment(
                                    Comment(
                                      comment: commentController.text,
                                    ),
                                    widget.postId,
                                  ),
                                );
                          }
                        }
                        commentController.clear();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
