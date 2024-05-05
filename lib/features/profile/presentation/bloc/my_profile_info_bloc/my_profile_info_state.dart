part of 'my_profile_info_bloc.dart';

@freezed
class MyProfileInfoState with _$MyProfileInfoState {
  const factory MyProfileInfoState.initial() = _Initial;
  const factory MyProfileInfoState.succes(UserProfile user) = _Success;
  const factory MyProfileInfoState.loading() = _Loading;
  const factory MyProfileInfoState.error() = _Error;
  const factory MyProfileInfoState.notSignedIn() = _NotSignedIn;
}
