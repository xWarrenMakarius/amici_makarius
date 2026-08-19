import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/login_response_entity.dart';
import '../../../resources/keys.dart';
import '../user_model/user_model.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@freezed
abstract class UserResponseModel with _$UserResponseModel {
  const factory UserResponseModel({
    @JsonKey(name: Keys.accessToken, defaultValue: '') required String accessToken,
    @JsonKey(name: Keys.user) required UserModel user,
    @JsonKey(name: Keys.tokenType, defaultValue: '') required String tokenType,
    @JsonKey(name: Keys.deviceId, defaultValue: '') required String deviceId,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, dynamic> json) => _$UserResponseModelFromJson(json);
}

  extension UserResponseModelX on UserResponseModel {
  LoginResponseEntity toEntity() {
    return LoginResponseEntity(
      accessToken: accessToken,
      tokenType: tokenType,
      deviceId: deviceId,
      user: user.toEntity(),
    );
  }
}