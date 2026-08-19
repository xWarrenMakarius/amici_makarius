import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';


import '../../core/resources/colors.dart';
import '../../core/resources/dimensions.dart';
import 'bloc/get_registration_webview/get_registration_webview_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  void initState() {
    super.initState();
    _getRegistrationWebView();
  }

  void _getRegistrationWebView() {
    context.read<GetRegistrationWebViewBloc>().add(DoGetRegistrationWebViewEvent());
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetRegistrationWebViewBloc, GetRegistrationWebViewState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(
              color: CustomColors.primary,
            ),
          ),
        );
        } else if (state is SuccessState) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.dark
            ),
            child: Material(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.paddingMedium
                ),
                child: WebViewWidget(controller: state.controller),
              ),
            ),
          );
        } else if (state is ErrorState) {
          return const Scaffold(
            body: Center(
              child: Text(
                'Something went wrong, Please try again.',
                style: TextStyle(
                  color: CustomColors.gray,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
          );
        }
        
        return const SizedBox.shrink();
      }
    );
  }
}