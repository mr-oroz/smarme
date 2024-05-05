import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/auth/domain/entities/entities.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/repositories.dart';
import 'package:w_sharme_beauty/features/profile/domain/repositories/i_profile_info_repository.dart';

part 'profile_info_update_event.dart';
part 'profile_info_update_state.dart';
part 'profile_info_update_bloc.freezed.dart';

@injectable
class ProfileInfoUpdateBloc
    extends Bloc<ProfileInfoUpdateEvent, ProfileInfoUpdateState> {
  ProfileInfoUpdateBloc(this.firebaseProfileFacade, this._authFacade)
      : super(const _Initial()) {
    on<ProfileInfoUpdateEvent>((event, emit) async {
      await event.maybeMap(
        update: (_Update event) async {
          emit(const ProfileInfoUpdateState.loading());
          final userOption = await _authFacade.getSignedInUser();
          await userOption.fold(() async {
            emit(const ProfileInfoUpdateState.error(message: 'error'));
          }, (users) async {
            await firebaseProfileFacade.updateInfiProfile(
              event.user,
              event.avatar,
              users.email,
            );
            emit(const ProfileInfoUpdateState.success());
          });
        },
        orElse: () {},
      );
    });
  }
  final IProfileInfoRepository firebaseProfileFacade;
  final IAuthFacade _authFacade;
}
