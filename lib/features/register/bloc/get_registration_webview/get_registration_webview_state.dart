part of 'get_registration_webview_bloc.dart';

sealed class GetRegistrationWebViewState {}

class InitialState extends GetRegistrationWebViewState {}

class LoadingState extends GetRegistrationWebViewState {}

class SuccessState extends GetRegistrationWebViewState {
  final WebViewController controller;
  SuccessState(this.controller);
}

class ErrorState extends GetRegistrationWebViewState {
  final String message;
  ErrorState(this.message);
}
