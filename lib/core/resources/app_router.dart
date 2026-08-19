import 'package:go_router/go_router.dart';

import '../../features/dashboard/dashboard_page.dart';
import '../../features/forgot_password/forgot_password_page.dart';
import '../../features/register/register_page.dart';
import '../../features/security/security_page.dart';


import '../../di/_dependencies.dart';
import '../../di/shared_preferences_manager.dart';
import 'app_routes.dart';

class AppRouter {

  static GoRouter router = GoRouter(
    initialLocation: AppRoutes.login,
    redirect: (context, state) {
      final prefs = getIt<SharedPreferencesManager>();
      final isLoggedIn = prefs.isLoggedIn;
      final isGoingLogIn = state.matchedLocation == AppRoutes.login;

       final guestAllowedRoutes = [
        AppRoutes.login,
        AppRoutes.register,
        AppRoutes.forgotPassword
      ];

      if (!isLoggedIn && !guestAllowedRoutes.contains(state.matchedLocation)) {
        return AppRoutes.login;
      }
      if (isLoggedIn) {
        if (isGoingLogIn || state.matchedLocation == AppRoutes.login) {
          return AppRoutes.dashboard;
        }
      }
      
      return null;
    },
    routes: [
      GoRoute(
        path: AppRoutes.login, 
        builder: (context, state) {
          return const SecurityPage();
        },
      ),
      GoRoute(
        path: AppRoutes.register, 
        builder: (context, state) {
          return const RegisterPage();
        },
      ),
      GoRoute(
        path: AppRoutes.forgotPassword, 
        builder: (context, state) {
          return const ForgotPasswordPage();
        },
      ),
      GoRoute(
        path: AppRoutes.dashboard, 
        builder: (context, state) {
          return const DashboardPage();
        },
      ),
    ]
  );
}