part of 'community_create_bloc.dart';

@freezed
class CommunityCreateState with _$CommunityCreateState {
  const factory CommunityCreateState.initial() = _Initial;

  const factory CommunityCreateState.loading() = _Loading;

  const factory CommunityCreateState.success() = _Success;

  const factory CommunityCreateState.error(String message) = _Error;
}
