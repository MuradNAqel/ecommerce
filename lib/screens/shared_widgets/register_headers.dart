// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HeaderTexts extends StatelessWidget {
  BuildContext context;
  String title;
  String subTitle;

  HeaderTexts({
    Key? key,
    required this.context,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          subTitle,
          softWrap: true,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    ));
  }
}
