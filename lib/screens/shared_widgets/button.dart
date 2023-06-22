// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants.dart';

class ContinueButton extends StatelessWidget {
  String route;

  ContinueButton({
    Key? key,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Colors.deepOrange),
          onPressed: () {
            context.go(route);
          },
          child: Text(
            'Continue',
            style: Theme.of(context).textTheme.labelLarge,
          )),
    );
  }
}
