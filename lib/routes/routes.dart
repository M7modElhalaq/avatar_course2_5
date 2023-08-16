import 'package:avatar_course2_5/core/resources/manager_strings.dart';
import 'package:avatar_course2_5/features/auth/presentation/views/auth_view.dart';
import 'package:avatar_course2_5/features/auth/presentation/views/login_view.dart';
import 'package:avatar_course2_5/features/auth/presentation/views/sign_up_view.dart';
import 'package:avatar_course2_5/features/home/presentation/views/home_view.dart';
import 'package:avatar_course2_5/features/main_screen.dart';
import 'package:avatar_course2_5/features/out_boarding/presentation/views/out_boarding_screen.dart';
import 'package:avatar_course2_5/features/splash/presentation/views/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashScreen = '/splash_screen';
  static const String outBoardingScreen = '/out_boarding_screen';
  static const String mainScreen = '/main_screen';
  static const String authView = '/auth';
  static const String loginView = '/login_view';
  static const String signUpView = '/sign_up_view';
  static const String homeView = '/home_view';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.outBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OutBoardingScreen());
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case Routes.authView:
        return MaterialPageRoute(builder: (_) => const AuthView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.signUpView:
        return MaterialPageRoute(builder: (_) => SignUpView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text(ManagerStrings.noFoundRoute),
        ),
      ),
    );
  }
}
