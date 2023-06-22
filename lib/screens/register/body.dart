import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../shared_widgets/back_arrow.dart';
import '../shared_widgets/button.dart';
import '../shared_widgets/login_with_socialMedia.dart';
import '../shared_widgets/register_headers.dart';
import '../shared_widgets/text_field.dart';

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
                route: splashScreenPath,
              ),
              HeaderTexts(
                  context: context,
                  title: 'Register Account',
                  subTitle:
                      'Complete your details or continue\n with social media'),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.9,
                  child: txtForm()),
              loginWithSocialMedia(),
              Text('By continuing your confirm you agree...',
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ));
  }

  Widget txtForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTxtField(
            hintTxt: 'Enter your email', label: 'Email', svgfile: 'Mail.svg'),
        CustomTxtField(
            hintTxt: 'Enter your password',
            label: 'Password',
            svgfile: 'Lock.svg'),
        CustomTxtField(
            hintTxt: 'Reenter your password',
            label: 'Confirm Password',
            svgfile: 'Lock.svg'),
        SizedBox(
            width: double.maxFinite,
            child: ContinueButton(
              route: completeScreenPath,
            )),
      ],
    );
  }
}
