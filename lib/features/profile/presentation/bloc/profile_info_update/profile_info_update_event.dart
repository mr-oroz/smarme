part of 'profile_info_update_bloc.dart';

@freezed
class ProfileInfoUpdateEvent with _$ProfileInfoUpdateEvent {
  const factory ProfileInfoUpdateEvent.update(UserProfile user, Uint8List avatar) = _Update;
}
