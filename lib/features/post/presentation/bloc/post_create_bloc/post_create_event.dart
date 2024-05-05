part of 'post_create_bloc.dart';

@freezed
class PostCreateEvent with _$PostCreateEvent {
  const factory PostCreateEvent.createPost(Post post, List<Uint8List> imageFiles) = _CreatePost;
}
