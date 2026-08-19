part of 'get_dashboard_webview_bloc.dart';

sealed class GetDashboardWebViewEvent {}

class DoGetDashboardWebViewEvent extends GetDashboardWebViewEvent {}

class DoLogOutWebViewEvent extends GetDashboardWebViewEvent {}