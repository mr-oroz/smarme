part of 'community_create_bloc.dart';

@freezed
class CommunityCreateEvent with _$CommunityCreateEvent {
  const factory CommunityCreateEvent.createCommunity(
    Community community,
    Uint8List avatar,
  ) = _CreateCommunity;
}
