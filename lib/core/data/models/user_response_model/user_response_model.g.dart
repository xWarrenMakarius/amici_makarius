// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) =>
    _UserResponseModel(
      accessToken: json['access_token'] as String? ?? '',
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      tokenType: json['token_type'] as String? ?? '',
      deviceId: json['device_id'] as String? ?? '',
    );

Map<String, dynamic> _$UserResponseModelToJson(_UserResponseModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'user': instance.user,
      'token_type': instance.tokenType,
      'device_id': instance.deviceId,
    };
