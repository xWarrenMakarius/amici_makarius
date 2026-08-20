import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../core/resources/app_config.dart';
import '../../../../di/_dependencies.dart';
import '../../../../di/shared_preferences_manager.dart';

part 'get_dashboard_webview_event.dart';
part 'get_dashboard_webview_state.dart';

class GetDashboardWebViewBloc extends Bloc<GetDashboardWebViewEvent, GetDashboardWebViewState> {

  final SharedPreferencesManager _sharedPreferencesManager = getIt();

  WebViewController? _webViewController;

  GetDashboardWebViewBloc() : super(InitialState()) {
    on<DoGetDashboardWebViewEvent>(_doGetDashboardWebView);
    on<DoLogOutWebViewEvent>(_logout);
  }

  void _doGetDashboardWebView(DoGetDashboardWebViewEvent event, Emitter<GetDashboardWebViewState> emit) async {
    emit(LoadingState());

    try {

      final token = _sharedPreferencesManager.getAccessToken;
      final baseUrl = AppConfig.instance.getBaseUrl.replaceFirst('api', '');
      final webUser = _sharedPreferencesManager.getWebUser;

      var isTokenSeeded = false;

      final controller = WebViewController();
      _webViewController = controller;

      controller
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onUrlChange: (url) async {
              if (url.url?.contains('/login') == true) {

                await controller.runJavaScript(
                  'localStorage.removeItem("authToken");'
                  'localStorage.removeItem("user");',
                );

                controller.clearCache();
                controller.clearLocalStorage();
                
                add(DoLogOutWebViewEvent());
              }
            },
            onProgress: (progress) {
            },
            onPageStarted: (url) {
            },
            onPageFinished: (url) async {

              if (!isTokenSeeded && token.isNotEmpty) {
                isTokenSeeded = true;
                final webUser = _sharedPreferencesManager.getWebUser;

                await controller.runJavaScript(
                  'localStorage.setItem("authToken", ${jsonEncode(token)});'
                  'localStorage.setItem("user", ${jsonEncode(webUser)});',
                );
                // await controller.reload();
                return;
              }
            },
            onNavigationRequest: (request) {

              return NavigationDecision.navigate;
            },
            onWebResourceError: (error) {
            },
          ),
        );
        await controller.loadHtmlString(
        '''
        <!DOCTYPE html>
        <html>
          <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
          </head>
          <body>
            <script>
              localStorage.setItem(
                "authToken",
                ${jsonEncode(token)}
              );

              localStorage.setItem(
                "user",
                ${jsonEncode(webUser)}
              );

              window.location.replace("$baseUrl/");
            </script>
          </body>
        </html>
        ''',
        baseUrl: baseUrl,
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
    if (_webViewController != null) {
      await _webViewController?.runJavaScript(
        'localStorage.removeItem("authToken");'
        'localStorage.removeItem("user");',
      );
    }
    
    await _sharedPreferencesManager.logout();

    emit(LogoutState());
  }
}