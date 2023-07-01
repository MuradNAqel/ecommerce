import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/details/details.dart';
import 'package:ecommerce/screens/forgot%20password/forgot_password.dart';
import 'package:ecommerce/screens/home/home_screen.dart';
import 'package:ecommerce/screens/register/register_screen.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';
import 'package:ecommerce/screens/wecome%20back/welcome_back.dart';
import 'package:go_router/go_router.dart';

import 'screens/coplete profile/complete_profile.dart';

class Routes {
  static GoRouter? router =
      // GoRouter(initialLocation: splashScreenPath, routes: [
      GoRouter(initialLocation: homeScreenPath, routes: [
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
    GoRoute(
      path: homeScreenPath,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: detailsScreen,
      builder: (context, state) => DetailsScreen(
          product: Product(
              imgPath: 'assets/images/shoes2.png',
              title: 'Sport Shose',
              category: 'Shoose',
              brandCount: 1,
              price: 99,
              isLiked: false)),
    ),
  ]);
}
