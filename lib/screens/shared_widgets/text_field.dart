// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTxtField extends StatelessWidget {
  String label;
  String hintTxt;
  String svgfile;

  CustomTxtField({
    Key? key,
    required this.label,
    required this.hintTxt,
    required this.svgfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: label,
          focusColor: Colors.deepOrange,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintTxt,
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 21),
          suffixIconConstraints: BoxConstraints(maxHeight: 50),
          suffixIcon: Padding(
              padding: EdgeInsets.only(right: 20),
              child: SvgPicture.asset('assets/icons/$svgfile', height: 20)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );
  }
}
