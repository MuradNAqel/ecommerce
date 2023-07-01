import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants.dart';
import '../shared_widgets/button.dart';
import '../shared_widgets/text_field.dart';

class WecomeBackForm extends StatefulWidget {
  const WecomeBackForm({super.key});

  @override
  State<WecomeBackForm> createState() => _WecomeBackFormState();
}

class _WecomeBackFormState extends State<WecomeBackForm> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTxtField(
            hintTxt: 'Enter your email', label: 'Email', svgfile: 'Mail.svg'),
        CustomTxtField(
            hintTxt: 'Enter your password',
            label: 'Password',
            svgfile: 'Lock.svg'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonBar(
              buttonPadding: EdgeInsets.only(right: 5),
              children: [
                Checkbox(
                  activeColor: Colors.grey,
                  checkColor: Colors.deepOrange,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Text(
                  'Remember me',
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            TextButton(
                onPressed: () {
                  context.go(forgotPasswordScreenPath);
                },
                child: Text(
                  'Forgot Password',
                  softWrap: true,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        decoration: TextDecoration.underline,
                        overflow: TextOverflow.fade,
                      ),
                ))
          ],
        ),
        SizedBox(
            width: double.maxFinite,
            child: ContinueButton(
              route: homeScreenPath,
            )),
      ],
    );
  }
}
