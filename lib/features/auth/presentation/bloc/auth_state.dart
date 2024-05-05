part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthError extends AuthState {
  const AuthError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

class LogoutSuccess extends AuthState {}

class LoginSuccess extends AuthState {}

class RegisterSucces extends AuthState {
  const RegisterSucces(this.userId);
  final String userId;
  @override
  List<Object> get props => [userId];
}

class RegisterSaveDataSuccess extends AuthState {}

class ChangePasswordSuccess extends AuthState {}

class AuthLoading extends AuthState {}
