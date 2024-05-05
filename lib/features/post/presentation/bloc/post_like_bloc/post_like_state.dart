part of 'post_like_bloc.dart';

@freezed
class PostLikeState with _$PostLikeState {
  const factory PostLikeState.initial() = _Initial;
  const factory PostLikeState.loading() = _Loading;
  const factory PostLikeState.error({required String message}) = _Error;
  const factory PostLikeState.liked() = _Liked;
  const factory PostLikeState.unliked() = _UnLiked;

}
