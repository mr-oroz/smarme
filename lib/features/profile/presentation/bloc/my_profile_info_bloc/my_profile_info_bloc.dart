import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/auth/domain/entities/entities.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/i_auth_facade.dart';
import 'package:w_sharme_beauty/features/profile/domain/repositories/i_profile_info_repository.dart';

part 'my_profile_info_event.dart';
part 'my_profile_info_state.dart';
part 'my_profile_info_bloc.freezed.dart';

@injectable
class MyProfileInfoBloc extends Bloc<MyProfileInfoEvent, MyProfileInfoState> {
  MyProfileInfoBloc(this._authFacade, this.profileInfoRepository)
      : super(const _Initial()) {
    on<MyProfileInfoEvent>((event, emit) async {
      await event.maybeMap(
        getMe: (value) async {
          emit(const MyProfileInfoState.loading());
          final userOption = await _authFacade.getSignedInUser();
          await userOption.fold(() {
            emit(const MyProfileInfoState.notSignedIn());
          }, (users) async {
            final result = await profileInfoRepository.getMeInfo(users.uid);
            result.fold((_) {
              emit(const MyProfileInfoState.error());
            }, (user) {
              emit(MyProfileInfoState.succes(user));
            });
          });
        },
        orElse: () {},
      );
    });
  }
  final IAuthFacade _authFacade;
  final IProfileInfoRepository profileInfoRepository;
}
