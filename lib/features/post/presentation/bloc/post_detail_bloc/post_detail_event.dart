part of 'post_detail_bloc.dart';

@freezed
class PostDetailEvent with _$PostDetailEvent {
  const factory PostDetailEvent.getPost(String postId) = _GetPost;
}
