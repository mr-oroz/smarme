part of 'community_like_bloc.dart';

@freezed
class CommunityLikeEvent with _$CommunityLikeEvent {
  const factory CommunityLikeEvent.like(String communityId, String authorId) =
      _Like;

  const factory CommunityLikeEvent.dislike(
      String communityId, String authorId,) = _Dislike;
}
