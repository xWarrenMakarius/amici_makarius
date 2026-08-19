import 'user_entity.dart';

class LoginResponseEntity {
  
  const LoginResponseEntity({
    required this.accessToken,
    required this.tokenType,
    required this.deviceId,
    required this.user,
  });

  final String accessToken;
  final String tokenType;
  final String deviceId;
  final UserEntity user;
}