part of 'my_community_list_bloc.dart';

@freezed
class MyCommunityListEvent with _$MyCommunityListEvent {
  const factory MyCommunityListEvent.getMyCommunity() = _GetMyCommunity;
  const factory MyCommunityListEvent.addNewCommunity(Community community) =
      _AddNewCommunity;
}
