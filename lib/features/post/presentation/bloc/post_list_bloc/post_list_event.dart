part of 'post_list_bloc.dart';

@freezed
class PostListEvent with _$PostListEvent {
  const factory PostListEvent.getPosts() = _GetPosts;
  const factory PostListEvent.addNewPost(Post post) = _AddNewPost;
}
