import 'package:flutter/material.dart';

import '../../constants.dart';
import '../shared_widgets/button.dart';
import '../shared_widgets/text_field.dart';

class ContinueForm extends StatefulWidget {
  const ContinueForm({super.key});

  @override
  State<ContinueForm> createState() => _ContinueFormState();
}

class _ContinueFormState extends State<ContinueForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTxtField(
            hintTxt: 'Enter your first name',
            label: 'First Name',
            svgfile: 'User.svg'),
        CustomTxtField(
            hintTxt: 'Enter your last name',
            label: 'Last Name',
            svgfile: 'User.svg'),
        CustomTxtField(
            hintTxt: 'Enter your phone number',
            label: 'Phone Number',
            svgfile: 'Phone.svg'),
        CustomTxtField(
            hintTxt: 'Enter your addressr',
            label: 'Address',
            svgfile: 'Location point.svg'),
        SizedBox(
            width: double.maxFinite,
            child: ContinueButton(
              route: welcomeBackScreenPath,
            )),
      ],
    );
  }
}
