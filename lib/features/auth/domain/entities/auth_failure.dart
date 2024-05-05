import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._();
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory AuthFailure.emailInvalid() = EmailNotInvalid;
  @override
  String toString() {
    return when(
      cancelledByUser: () => "Операция отменена пользователем",
      serverError: () => "Произошла ошибка сервера",
      emailAlreadyInUse: () => "Электронная почта уже используется",
      invalidEmailAndPasswordCombination: () => "Неверная комбинация электронной почты или пароля",
      emailInvalid: () => 'Электронаая почта не существует',
    );
  }
}
