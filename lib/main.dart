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

// Scaffold(
//         backgroundColor: Colors.white70,
//         bottomNavigationBar: Container(
//           width: double.infinity,
//           padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
//           decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30), topRight: Radius.circular(30))),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               IconButton(
//                   onPressed: () {},
//                   icon: SvgPicture.asset('assets/icons/Shop Icon.svg')),
//               IconButton(
//                   onPressed: () {},
//                   icon: SvgPicture.asset('assets/icons/Heart Icon.svg')),
//               IconButton(
//                   onPressed: () {},
//                   icon: SvgPicture.asset('assets/icons/Chat bubble Icon.svg')),
//               IconButton(
//                   onPressed: () {},
//                   icon: SvgPicture.asset('assets/icons/User.svg')),
//             ],
//           ),
//         ),
//         body: SplashScreen(),
//       ),