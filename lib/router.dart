import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/forgot%20password/forgot_password.dart';
import 'package:ecommerce/screens/register/register_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';
import 'package:ecommerce/screens/wecome%20back/welcome_back.dart';
import 'package:go_router/go_router.dart';

import 'screens/coplete profile/complete_profile.dart';

class Routes {
  static GoRouter? router =
      GoRouter(initialLocation: splashScreenPath, routes: [
    GoRoute(
      path: splashScreenPath,
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: registerScreenPath,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: completeScreenPath,
      builder: (context, state) => CompleteProfileScreen(),
    ),
    GoRoute(
      path: welcomeBackScreenPath,
      builder: (context, state) => WelcomeBackScreen(),
    ),
    GoRoute(
      path: forgotPasswordScreenPath,
      builder: (context, state) => ForgotPasswordScreen(),
    ),
  ]);
}
