import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

import '../shared_widgets/back_arrow.dart';
import '../shared_widgets/dont_have_account.dart';
import '../shared_widgets/login_with_socialMedia.dart';
import '../shared_widgets/register_headers.dart';
import 'form.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.black12),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BackArrow(
                route: completeScreenPath,
              ),
              HeaderTexts(
                  context: context,
                  title: 'Welcome Back',
                  subTitle:
                      'Sign in with your email and password \nor continue with social media'),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.9,
                  child: WecomeBackForm()),
              const loginWithSocialMedia(),
              const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: DontHAveAccountText(),
              ),
            ],
          ),
        ));
  }
}
