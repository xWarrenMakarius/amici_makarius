import '../../data/repositories/auth_repository_impl.dart';
import '../entities/login_response_entity.dart';
import '../payloads/login_param.dart';

class LoginUseCase {

  LoginUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<LoginResponseEntity> execute({
    required String email, 
    required String password,
    required List<String> deviceIds,
    required String deviceFingerPrint,
  }) {
    final param = LoginParam(
      email: email, 
      password: password,
      deviceIds: deviceIds,
      deviceFingerPrint: deviceFingerPrint,
    );

    return _authRepository.login(param);
  }
}