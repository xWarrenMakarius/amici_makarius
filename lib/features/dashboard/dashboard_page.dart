import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../core/resources/app_routes.dart';
import '../../core/resources/colors.dart';
import '../../core/resources/dimensions.dart';
import 'bloc/get_dashboard_webview/get_dashboard_webview_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
    _getDashboardWebView();
  }

  void _getDashboardWebView() {
    context.read<GetDashboardWebViewBloc>().add(DoGetDashboardWebViewEvent());
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetDashboardWebViewBloc, GetDashboardWebViewState>(
      listener: (context, state) {
        if (state is LogoutState) {
          context.go(AppRoutes.login);
        }
      },
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
              child: SafeArea(
                bottom: false,
                child: WebViewWidget(controller: state.controller)),
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