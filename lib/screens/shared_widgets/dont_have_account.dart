import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DontHAveAccountText extends StatelessWidget {
  const DontHAveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?",
            style: Theme.of(context).textTheme.titleSmall),
        TextButton(
            onPressed: () {
              context.go(registerScreenPath);
            },
            child: Text(
              'Sign Up',
              style: Theme.of(context).textTheme.labelMedium,
            )),
      ],
    );
  }
}
