part of 'my_profile_info_bloc.dart';

@freezed
class MyProfileInfoEvent with _$MyProfileInfoEvent {
  const factory MyProfileInfoEvent.getMe() = _getMe;
}
