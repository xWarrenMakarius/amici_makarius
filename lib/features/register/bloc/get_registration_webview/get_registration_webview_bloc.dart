import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../core/resources/api_endpoints.dart';
import '../../../../core/resources/app_config.dart';

part 'get_registration_webview_event.dart';
part 'get_registration_webview_state.dart';

class GetRegistrationWebViewBloc extends Bloc<GetRegistrationWebViewEvent, GetRegistrationWebViewState> {
  GetRegistrationWebViewBloc() : super(InitialState()) {
    on<DoGetRegistrationWebViewEvent>(_doGetRegistrationWebView);
  }

  void _doGetRegistrationWebView(DoGetRegistrationWebViewEvent event, Emitter<GetRegistrationWebViewState> emit) async {
    emit(LoadingState());

    try {
      final controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(
          Uri.parse(
            '${AppConfig.instance.getBaseUrl.replaceFirst('api', '')}/${ApiEndpoints.registration}',
          ),
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
}
