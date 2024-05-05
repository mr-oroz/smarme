part of 'comment_create_bloc.dart';

@freezed
class CommentCreateState with _$CommentCreateState {
  const factory CommentCreateState.initial() = _Initial;
  const factory CommentCreateState.success(Comment comment) = _Success;
  const factory CommentCreateState.loading() = _Loading;
  const factory CommentCreateState.error() = _Error;
}
