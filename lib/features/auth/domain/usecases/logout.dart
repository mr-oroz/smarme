import 'package:injectable/injectable.dart';
import 'package:w_sharme_beauty/core/interfaces/usecase.dart';
import 'package:w_sharme_beauty/features/auth/domain/repositories/i_auth_facade.dart';

@injectable
class LogoutUC implements IUsecase<void, Future<AuthFacadeResult>> {
  final IAuthFacade repository;

  LogoutUC({required this.repository});

  @override
  Future<AuthFacadeResult> execute(void args) async {
    return await repository.logout();
  }
}
