part of 'community_list_bloc.dart';

@freezed
class CommunityListState with _$CommunityListState {
  const factory CommunityListState.initial() = _Initial;
  const factory CommunityListState.loading() = _Loading;
  const factory CommunityListState.success(List<Community> communities) =
      _Success;
  const factory CommunityListState.error(String message) = _Error;
}
