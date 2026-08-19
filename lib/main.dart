import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/resources/app_router.dart';
import 'core/resources/app_config.dart';
import 'core/resources/environment.dart';
import 'core/resources/theme.dart';
import 'di/_dependencies.dart';
import 'features/dashboard/bloc/get_dashboard_webview/get_dashboard_webview_bloc.dart';
import 'features/forgot_password/bloc/forgot_password/forgot_password_bloc.dart';
import 'features/login/bloc/login/login_bloc.dart';
import 'features/register/bloc/get_registration_webview/get_registration_webview_bloc.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.initialize(
    getBaseUrl: Environment.getBaseUrl,
  );
  await initDependencies();
  await Future.delayed(const Duration(seconds: 2));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => GetRegistrationWebViewBloc(),
        ),
        BlocProvider(
          create: (_) => LoginBloc(),
        ),
        BlocProvider(
          create: (_) => ForgotPasswordBloc(),
        ),
        BlocProvider(
          create: (_) => GetDashboardWebViewBloc(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Amici Makarius',
        theme: AppTheme.lightTheme,
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}