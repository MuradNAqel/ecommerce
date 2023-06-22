import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class loginWithSocialMedia extends StatelessWidget {
  const loginWithSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      buttonPadding: EdgeInsets.all(20),
      children: [
        CircleAvatar(
          backgroundColor: Colors.black12,
          child: SvgPicture.asset('assets/icons/google-icon.svg'),
        ),
        CircleAvatar(
          backgroundColor: Colors.black12,
          child: SvgPicture.asset('assets/icons/facebook-2.svg'),
        ),
        CircleAvatar(
          backgroundColor: Colors.black12,
          child: SvgPicture.asset('assets/icons/twitter.svg'),
        )
      ],
    );
  }
}
