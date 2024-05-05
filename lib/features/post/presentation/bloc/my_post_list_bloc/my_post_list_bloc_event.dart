part of 'my_post_list_bloc.dart';

@freezed
class MyPostListEvent with _$MyPostListEvent {
  const factory MyPostListEvent.getPosts() = _GetPosts;
  const factory MyPostListEvent.addNewPost(Post post) = _AddNewPost;
}
