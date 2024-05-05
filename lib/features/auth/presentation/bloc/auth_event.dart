part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoginEvent extends AuthEvent {
  const LoginEvent(this.email, this.password);
  final String email;
  final String password;
  @override
  List<Object?> get props => [email, password];
}

class LogoutEvent extends AuthEvent {}

class RegisterEvent extends AuthEvent {
  const RegisterEvent(this.email, this.password);
  final String email;
  final String password;
  @override
  List<Object?> get props => [email, password];
}

class RegisterSaveDataEvent extends AuthEvent {
  const RegisterSaveDataEvent(this.name, this.city, this.username);
  final String name;
  final String city;
  final String username;

  @override
  List<Object?> get props => [name, city, username];
}

class ChangePasswordEmailEvent extends AuthEvent {
  const ChangePasswordEmailEvent(this.email);
  final String email;
  @override
  List<Object?> get props => [email];
}
