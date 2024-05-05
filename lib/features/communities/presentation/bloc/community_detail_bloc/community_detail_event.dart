part of 'community_detail_bloc.dart';

@freezed
class CommunityDetailEvent with _$CommunityDetailEvent {
  const factory CommunityDetailEvent.loaded(String? communityId) = _Loaded;
}
