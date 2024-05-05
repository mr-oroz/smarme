part of 'my_post_list_bloc.dart';

@freezed
class MyPostListState with _$MyPostListState {
  const factory MyPostListState.initial() = _Initial;
  const factory MyPostListState.loading() = _Loading;
  const factory MyPostListState.error({required String message}) = _Error;
  const factory MyPostListState.notSignedIn() = _NotSignedIn;
  const factory MyPostListState.success(List<Post> posts) = _Success;
}
