import '../../domain/entities/login_response_entity.dart';
import '../../domain/payloads/forgot_password_param.dart';
import '../../domain/payloads/login_param.dart';
import '../models/user_response_model/user_response_model.dart';
import '../remote_sources/auth_remote_source_impl.dart';

abstract class AuthRepository {

  Future<LoginResponseEntity> login(LoginParam param);
  Future<String> forgotPassword(ForgotPasswordParam param);
}

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    required this.authRemoteSource
  });

  final AuthRemoteSource authRemoteSource;
  @override
  Future<LoginResponseEntity> login(LoginParam param) async {
    final response = await authRemoteSource.login(param.toJson());
    return response.toEntity();
  }

  @override
  Future<String> forgotPassword(ForgotPasswordParam param) async {
    return await authRemoteSource.forgotPassword(param.toJson());
  }
}