part of 'profile_info_update_bloc.dart';

@freezed
class ProfileInfoUpdateState with _$ProfileInfoUpdateState {
  const factory ProfileInfoUpdateState.initial() = _Initial;
  const factory ProfileInfoUpdateState.success() = _Success;
  const factory ProfileInfoUpdateState.error({required String message}) =
      _Error;
  const factory ProfileInfoUpdateState.loading() = _Loading;
}
