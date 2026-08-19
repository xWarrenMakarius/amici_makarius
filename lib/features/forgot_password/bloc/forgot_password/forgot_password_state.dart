part of 'forgot_password_bloc.dart';

sealed class ForgotPasswordState {}

class InitialState extends ForgotPasswordState {}

class LoadingState extends ForgotPasswordState {}

class SuccessState extends ForgotPasswordState {
  final String message;
  SuccessState(this.message);
}

class ErrorState extends ForgotPasswordState {
  final String message;
  ErrorState(this.message);
}
