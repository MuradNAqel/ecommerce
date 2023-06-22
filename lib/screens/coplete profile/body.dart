import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

import '../shared_widgets/back_arrow.dart';
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
                route: registerScreenPath,
              ),
              HeaderTexts(
                  context: context,
                  title: 'Complete Profile',
                  subTitle:
                      'Complete your details or continue\n with social media'),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.9,
                  child: ContinueForm()),
              Text(
                  'By continuing your confirm you agree\nwith our terms and conditions',
                  style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
        ));
  }
}
