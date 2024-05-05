part of 'post_list_bloc.dart';

@freezed
class PostListState with _$PostListState {
  const factory PostListState.initial() = _Initial;
  const factory PostListState.loading() = _Loading;
  const factory PostListState.error({required String message}) = _Error;
  const factory PostListState.success(List<Post> posts) = _Success;
}
