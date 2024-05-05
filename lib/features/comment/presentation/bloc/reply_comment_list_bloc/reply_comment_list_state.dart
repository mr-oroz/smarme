part of 'reply_comment_list_bloc.dart';

@freezed
class ReplyCommentListState with _$ReplyCommentListState {
  const factory ReplyCommentListState.initial() = _Initial;
  const factory ReplyCommentListState.success(List<Comment> comments) = _Success;
  const factory ReplyCommentListState.loading() = _Loading;
  const factory ReplyCommentListState.error({required String error}) = _Error;

}
