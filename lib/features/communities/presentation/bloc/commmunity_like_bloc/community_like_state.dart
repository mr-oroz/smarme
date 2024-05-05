part of 'community_like_bloc.dart';

@freezed
class CommunityLikeState with _$CommunityLikeState {
  const factory CommunityLikeState.initial() = _Initial;
  const factory CommunityLikeState.loadingCmmunityLike() = _LoadingCmmunityLike;
  const factory CommunityLikeState.errorCmmunityLike(
      {required String message,}) = _ErrorCmmunityLike;
  const factory CommunityLikeState.likedCommunity() = _LikedCmmunity;
  const factory CommunityLikeState.unlikedCommunity() = _UnLikedCmmunity;
}
