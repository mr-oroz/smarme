part of 'add_reply_comment_bloc.dart';

@freezed
class AddReplyCommentState with _$AddReplyCommentState {
  const factory AddReplyCommentState.initial() = _Initial;
  const factory AddReplyCommentState.success(Comment comment) = _Success;
  const factory AddReplyCommentState.error({required String error}) = _Error;
  const factory AddReplyCommentState.loading() = _Loading;

}
