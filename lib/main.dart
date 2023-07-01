import 'package:ecommerce/router.dart';
import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: BaseAppTheme.baseThemeData,
      routerConfig: Routes.router,
    );
  }
}
