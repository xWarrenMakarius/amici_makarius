part of 'login_bloc.dart';

sealed class LoginState {}

class InitialState extends LoginState {}

class LoadingState extends LoginState {}

class SuccessState extends LoginState {
  final UserEntity user;
  SuccessState(this.user);
}

class ErrorState extends LoginState {
  final String message;
  ErrorState(this.message);
}
