part of 'my_community_list_bloc.dart';

@freezed
class MyCommunityListState with _$MyCommunityListState {
  const factory MyCommunityListState.initial() = _Initial;
  const factory MyCommunityListState.loading() = _Loading;
  const factory MyCommunityListState.success(List<Community> communities) =
      _Success;
  const factory MyCommunityListState.error({required String message}) = _Error;
  const factory MyCommunityListState.notSignedIn() = _NotSignedIn;
}
