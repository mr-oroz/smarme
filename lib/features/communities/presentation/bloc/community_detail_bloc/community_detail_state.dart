part of 'community_detail_bloc.dart';

@freezed
class CommunityDetailState with _$CommunityDetailState {
  const factory CommunityDetailState.initial() = _Initial;
  const factory CommunityDetailState.error({String? error}) = Error;
  const factory CommunityDetailState.loading() = _Loading;
  const factory CommunityDetailState.success(Community community) = _Success;
  const factory CommunityDetailState.noSignAuth() = _NoSignAuth;

}
