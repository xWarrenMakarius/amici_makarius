import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../core/resources/app_config.dart';
import '../../../../di/_dependencies.dart';
import '../../../../di/shared_preferences_manager.dart';

part 'get_dashboard_webview_event.dart';
part 'get_dashboard_webview_state.dart';

class GetDashboardWebViewBloc extends Bloc<GetDashboardWebViewEvent, GetDashboardWebViewState> {

  final SharedPreferencesManager _sharedPreferencesManager = getIt();

  GetDashboardWebViewBloc() : super(InitialState()) {
    on<DoGetDashboardWebViewEvent>(_doGetDashboardWebView);
    on<DoLogOutWebViewEvent>(_logout);
  }

  void _doGetDashboardWebView(DoGetDashboardWebViewEvent event, Emitter<GetDashboardWebViewState> emit) async {
    emit(LoadingState());

    try {

      final token = _sharedPreferencesManager.getAccessToken;

      log('token: $token');

      final controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageStarted: (url) {
              log('WebView Page Started: $url');
            },
            onPageFinished: (url) {
              log('WebView Page Finished: $url');

              if (url.contains('https://crim-staging.alagangamicireviewcenter.com/settings')) {
                _sharedPreferencesManager.reset();
                _sharedPreferencesManager.removeUser();
                
                emit(LogoutState());
              }
            },
            onNavigationRequest: (request) {
              log('WebView Navigation Request: ${request.url}');

              return NavigationDecision.navigate;
            },
            onWebResourceError: (error) {
              log(
                'WebView Error: '
                '${error.errorCode} - ${error.description}',
              );
            },
          ),
        )
        ..loadRequest(
          Uri.parse(
            '${AppConfig.instance.getBaseUrl.replaceFirst('api', '')}/',
          ),
          headers: {
            'Authorization': 'Bearer $token',
          },
        );

      emit(SuccessState(controller));
    } catch (e) {
      emit(
        ErrorState(
          e.toString(),
        ),
      );
    }
  }

  Future<void> _logout(
    DoLogOutWebViewEvent event,
    Emitter<GetDashboardWebViewState> emit,
  ) async {
    _sharedPreferencesManager.reset();
    await _sharedPreferencesManager.removeUser();

    emit(LogoutState());
  }
}
