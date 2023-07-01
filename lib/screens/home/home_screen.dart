import 'package:ecommerce/screens/home/body.dart';
import 'package:flutter/material.dart';

import '../shared_widgets/bottom_nav_bar.dart';
import 'nested_scroll_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: bottomNavBar(), body: NestedView());
  }
}
