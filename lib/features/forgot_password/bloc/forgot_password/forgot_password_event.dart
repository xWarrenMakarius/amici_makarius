part of 'forgot_password_bloc.dart';

sealed class ForgotPasswordEvent {}

class DoForgotPasswordEvent extends ForgotPasswordEvent {
  final String email;
  DoForgotPasswordEvent(this.email);
}