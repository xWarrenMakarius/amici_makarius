import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/domain/entities/user_entity.dart';
import '../../../../core/domain/usecases/login_usecase.dart';
import '../../../../core/utils/device_info_utils.dart';
import '../../../../core/utils/validators/email_validator.dart';
import '../../../../di/_dependencies.dart';
import '../../../../di/shared_preferences_manager.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {

  final LoginUseCase _loginUseCase = getIt();

  final SharedPreferencesManager _sharedPreferencesManager = getIt();

  LoginBloc() : super(InitialState()) {
    on<DoLoginEvent>(_doLogin);
  }

  void _doLogin(DoLoginEvent event, Emitter<LoginState> emit) async {
    final email = event.email.trim();
    final password = event.password.trim();

    if (email.isEmpty) {
      emit(ErrorState('The email field is required.'));
      return;
    } else if (password.isEmpty) {
      emit(ErrorState('The password field is required.'));
      return;
    } else if (!EmailValidator.isValid(email)) {
      emit(ErrorState('Please enter a valid email address.'));
      return;
    }
    
    emit(LoadingState());

    try {
      final uuid = await DeviceInfoUtils.deviceUuid;
      final storedDeviceId = _sharedPreferencesManager.getDeviceId;

      final deviceId = storedDeviceId == uuid || storedDeviceId.isEmpty
      ? uuid
      : uuid;

      _sharedPreferencesManager.setDeviceId(deviceId);


      final data = await _loginUseCase.execute(
        email: event.email, 
        password: event.password, 
        deviceIds: [deviceId], 
        deviceFingerPrint: 'fcb31ae555db9418eb6f228911dd2d61',
      );

      await _sharedPreferencesManager.setLoggedIn(true);
      await _sharedPreferencesManager.setAccessToken(data.accessToken);
      await _sharedPreferencesManager.setUser(data.user);
      await _sharedPreferencesManager.setWebUser(
        jsonEncode(_sharedPreferencesManager.getWebUser),
      );

      emit(SuccessState(data.user));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
