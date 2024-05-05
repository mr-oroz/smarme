part of 'post_like_bloc.dart';

@freezed
class PostLikeEvent with _$PostLikeEvent {
  const factory PostLikeEvent.like(String postId, String authorId) = _Like;
  const factory PostLikeEvent.dislike(String postId, String authorId) = _Dislike;
}
