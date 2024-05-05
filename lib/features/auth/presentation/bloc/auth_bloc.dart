// ignore_for_file: avoid_print
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacede;
  String? _userId;
  AuthBloc(this.authFacede) : super(AuthInitial()) {
    on<LoginEvent>(login);
    on<RegisterEvent>(register);
    on<LogoutEvent>(logout);
    on<RegisterSaveDataEvent>(registerSaveData);
    on<ChangePasswordEmailEvent>(resetPassword);
  }
  Future<void> resetPassword(
    ChangePasswordEmailEvent event,
    Emitter emit,
  ) async {
    emit(AuthLoading());
    try {
      await authFacede.resetPassword(event.email);
      emit(ChangePasswordSuccess());
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> login(LoginEvent event, Emitter emit) async {
    emit(AuthLoading());
    final result = await authFacede.loginWithEmail(event.email, event.password);
    result.fold((failure) {
      emit(AuthError(failure.toString()));
    }, (_) {
      emit(LoginSuccess());
    });
  }

  Future<void> register(RegisterEvent event, Emitter emit) async {
    emit(AuthLoading());
    try {
      final result =
          await authFacede.registerWithEmail(event.email, event.password);
      result.fold((failure) {
        emit(AuthError(failure.toString()));
      }, (userId) {
        _userId = userId;
        emit(RegisterSucces(userId));
      });
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> logout(LogoutEvent event, Emitter emit) async {
    emit(AuthLoading());
    try {
      await authFacede.logout();
      emit(LogoutSuccess());
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> registerSaveData(
    RegisterSaveDataEvent event,
    Emitter emit,
  ) async {
    emit(AuthLoading());
    if (_userId != null) {
      try {
        await authFacede.saveDataUser(
          event.name,
          event.city,
          event.username,
          _userId!,
        );
        emit(RegisterSaveDataSuccess());
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    } else {
      emit(const AuthError("User ID is null."));
    }
  }
}
