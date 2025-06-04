import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mobistock/bindings/auth_binding.dart';
import 'package:mobistock/bindings/dashboard_binding.dart';
import 'package:mobistock/routes/app_routes.dart';
import 'package:mobistock/views/auth/login_screen.dart';
import 'package:mobistock/views/auth/reset_password.dart';
import 'package:mobistock/views/auth/signup_screen.dart';
import 'package:mobistock/views/auth/verify_email.dart';
import 'package:mobistock/views/dashboard/dashboard_screen.dart';
import 'package:mobistock/views/splash/splash_screen.dart';

class AppPages {
  static const String initial = AppRoutes.splash;

  static final routes = [
    // // Splash Screen
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
    ),

    // // Welcome/Onboarding Screen
    // GetPage(
    //   name: AppRoutes.welcome,
    //   page: () => WelcomeScreen(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: Duration(milliseconds: 300),
    // ),

    // Authentication Routes
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 400),
      binding: AuthBinding(),
    ),

    GetPage(
      name: AppRoutes.signup,
      page: () => SignupScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 400),
      binding: AuthBinding(),
    ),

    GetPage(
      name: AppRoutes.resetPassword,
      page: () => ResetPasswordScreen(),
      transition: Transition.upToDown,
      transitionDuration: Duration(milliseconds: 400),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.verifyEmail,
      page: () => VerifyEmailScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => InventoryDashboard(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
      binding: DashboardBinding()
    ),
  ];

  //   // Main App Routes
  //   GetPage(
  //     name: AppRoutes.home,
  //     page: () => HomeScreen(),
  //     transition: Transition.fadeIn,
  //     transitionDuration: Duration(milliseconds: 500),
  //     binding: HomeBinding(),
  //   ),

  //   GetPage(
  //     name: AppRoutes.profile,
  //     page: () => ProfileScreen(),
  //     transition: Transition.rightToLeft,
  //     transitionDuration: Duration(milliseconds: 300),
  //   ),

  //   GetPage(
  //     name: AppRoutes.settings,
  //     page: () => SettingsScreen(),
  //     transition: Transition.rightToLeft,
  //     transitionDuration: Duration(milliseconds: 300),
  //   ),

  //   // Error Routes
  //   GetPage(
  //     name: AppRoutes.notFound,
  //     page: () => NotFoundScreen(),
  //     transition: Transition.fadeIn,
  //   ),

  //   GetPage(
  //     name: AppRoutes.error,
  //     page: () => ErrorScreen(),
  //     transition: Transition.fadeIn,
  //   ),

  // // Unknown Route Handler
  // static Route<dynamic> onUnknownRoute(RouteSettings settings) {
  //   return GetPageRoute(
  //     settings: settings,
  //     page: () => NotFoundScreen(),
  //     transition: Transition.fadeIn,
  //   );
  // }
}
