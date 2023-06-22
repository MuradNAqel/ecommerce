import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

import '../shared_widgets/back_arrow.dart';
import '../shared_widgets/button.dart';
import '../shared_widgets/dont_have_account.dart';
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackArrow(
                route: welcomeBackScreenPath,
              ),
              HeaderTexts(
                  context: context,
                  title: 'Forgot Password',
                  subTitle:
                      'Please enter your email and we will send\nyou a link to return to your account'),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: CustomTxtField(
                    hintTxt: 'Enter your email',
                    label: 'Email',
                    svgfile: 'Mail.svg'),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ContinueButton(
                    route: welcomeBackScreenPath,
                  )),
              DontHAveAccountText(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              )
            ],
          ),
        ));
  }

  SizedBox form(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            CustomTxtField(
                hintTxt: 'Enter your email',
                label: 'Email',
                svgfile: 'Mail.svg'),
            SizedBox(
                width: double.maxFinite,
                child: ContinueButton(
                  route: welcomeBackScreenPath,
                )),
          ],
        ));
  }
}
