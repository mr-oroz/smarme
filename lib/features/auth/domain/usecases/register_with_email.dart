import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/core/interfaces/usecase.dart';
import 'package:w_sharme_beauty/features/auth/domain/entities/entities.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/repositories.dart';

class RegisterWithEmailUCArgs {
  final String email;
  final String password;
  const RegisterWithEmailUCArgs({required this.email, required this.password});
}

@injectable
class RegisterWithEmailUC
    implements
        IUsecase<RegisterWithEmailUCArgs, Future<Either<AuthFailure, String>>> {
  final IAuthFacade repository;

  RegisterWithEmailUC({required this.repository});

  @override
  Future<Either<AuthFailure, String>> execute(
      RegisterWithEmailUCArgs args,) async {
    return await repository.registerWithEmail(
      args.email,
      args.password,
    );
  }
}
