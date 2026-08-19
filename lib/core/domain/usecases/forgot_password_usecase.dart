import '../../data/repositories/auth_repository_impl.dart';
import '../payloads/forgot_password_param.dart';

class ForgotPasswordUseCase {

  ForgotPasswordUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<String> execute({
    required String email,
  }) {
    final param = ForgotPasswordParam(
      email: email,
    );

    return _authRepository.forgotPassword(param);
  }
}