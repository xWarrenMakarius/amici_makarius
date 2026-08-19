import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/domain/usecases/forgot_password_usecase.dart';
import '../../../../core/utils/validators/email_validator.dart';
import '../../../../di/_dependencies.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {

  final ForgotPasswordUseCase _forgotPasswordUseCase = getIt();

  ForgotPasswordBloc() : super(InitialState()) {
    on<DoForgotPasswordEvent>(_doForgotPassword);
  }

  void _doForgotPassword(DoForgotPasswordEvent event, Emitter<ForgotPasswordState> emit) async {

    final email = event.email.trim();

    if (email.isEmpty) {
      emit(ErrorState('The email field is required.'));
      return;
    } else if (!EmailValidator.isValid(email)) {
      emit(ErrorState('Please enter a valid email address.'));
      return;
    }
    
    emit(LoadingState());

    try {
      final data = await _forgotPasswordUseCase.execute(email: event.email);

      emit(SuccessState(data));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
