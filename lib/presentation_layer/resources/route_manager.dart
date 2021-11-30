import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_course_mvvm/presentation_layer/authentication/forgot_password/forgot_password.dart';
import 'package:udemy_course_mvvm/presentation_layer/authentication/login/login.dart';
import 'package:udemy_course_mvvm/presentation_layer/authentication/register/register.dart';
import 'package:udemy_course_mvvm/presentation_layer/main/main_view.dart';
import 'package:udemy_course_mvvm/presentation_layer/onboarding/onboarding.dart';
import 'package:udemy_course_mvvm/presentation_layer/resources/string_manager.dart';
import 'package:udemy_course_mvvm/presentation_layer/splash/splash.dart';
import 'package:udemy_course_mvvm/presentation_layer/store_details/store_details.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

class RouterGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
