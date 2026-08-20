import 'dart:convert';

import '../../../di/_dependencies.dart';
import '../../../di/shared_preferences_manager.dart';
import '../../resources/api_endpoints.dart';
import '../../domain/service/api_service.dart';
import '../../utils/enums/http_method.dart';
import '../models/user_response_model/user_response_model.dart';

abstract class AuthRemoteSource {

  Future<UserResponseModel> login(body);
  Future<String> forgotPassword(body);
}

class AuthRemoteSourceImpl extends ApiService implements AuthRemoteSource  {

  @override
  Future<UserResponseModel> login(body) async {
    final response = await sendRequest(
      method: HttpMethod.post,
      endpoint: ApiEndpoints.login,
      body: body
    );
    
    final user = response['user'];


    if (user != null) {
      await getIt<SharedPreferencesManager>().setWebUser(
        jsonEncode(user),
      );
    }

    
    
    return UserResponseModel.fromJson(response);
  }

  @override
  Future<String> forgotPassword(body) async {
    final response = await sendRequest(
      method: HttpMethod.post,
      endpoint: ApiEndpoints.forgotPassword,
      body: body,
    );

    return response['message'] as String;
  }
}