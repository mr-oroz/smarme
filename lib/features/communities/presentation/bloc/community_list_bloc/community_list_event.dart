part of 'community_list_bloc.dart';

@freezed
class CommunityListEvent with _$CommunityListEvent {
  const factory CommunityListEvent.getCommunities() = _GetCommunities;
}
