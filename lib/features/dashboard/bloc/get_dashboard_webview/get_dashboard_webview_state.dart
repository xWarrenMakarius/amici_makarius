part of 'get_dashboard_webview_bloc.dart';

sealed class GetDashboardWebViewState {}

class InitialState extends GetDashboardWebViewState {}

class LoadingState extends GetDashboardWebViewState {}

class SuccessState extends GetDashboardWebViewState {
  final WebViewController controller;
  SuccessState(this.controller);
}

class ErrorState extends GetDashboardWebViewState {
  final String message;
  ErrorState(this.message);
}

class LogoutState extends GetDashboardWebViewState {}
