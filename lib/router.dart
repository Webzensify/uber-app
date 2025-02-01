import 'package:flutter/material.dart';
import 'package:travelo/splash_screen.dart';
import 'package:travelo/views/preauth/car_info_form.dart';
import 'package:travelo/views/preauth/forgot_password.dart';
import 'package:travelo/views/preauth/intro_page.dart';
import 'package:travelo/views/preauth/login.dart';
import 'package:travelo/views/preauth/register.dart';
import 'package:travelo/views/preauth/registration_type.dart';
import 'package:travelo/views/preauth/verification.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/registerationType':
        return MaterialPageRoute(builder: (_) => RegistrationType());
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/intro':
        return MaterialPageRoute(
            builder: (_) => IntroPage(userType: settings.arguments as int));
      case '/register':
        return MaterialPageRoute(
            builder: (_) => Register(
                  userType: settings.arguments as int,
                ));
      case '/verification':
        return MaterialPageRoute(builder: (_) => Verification());
      case '/forgotPassword':
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case '/carInfoForm':
        return MaterialPageRoute(builder: (_) => CarInfoForm());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
