import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/core/interfaces/usecase.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/repositories.dart';

class LoginWithEmailUCArgs {
  final String email;
  final String password;
  const LoginWithEmailUCArgs({required this.email, required this.password});
}

@injectable
class LoginWithEmailUC
    implements IUsecase<LoginWithEmailUCArgs, Future<AuthFacadeResult>> {
  final IAuthFacade repository;

  LoginWithEmailUC({required this.repository});

  @override
  Future<AuthFacadeResult> execute(LoginWithEmailUCArgs args) async {
    return await repository.loginWithEmail(args.email, args.password);
  }
}
