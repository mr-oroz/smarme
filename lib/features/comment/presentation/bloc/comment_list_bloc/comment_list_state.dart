part of 'comment_list_bloc.dart';

@freezed
class CommentListState with _$CommentListState {
  const factory CommentListState.initial() = _Initial;
  const factory CommentListState.success(List<Comment> comments) = _Success;
  const factory CommentListState.loading() = _Loading;
  const factory CommentListState.error({required String error}) = _Error;
}
