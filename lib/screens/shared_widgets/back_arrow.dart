// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackArrow extends StatelessWidget {
  final String route;

  const BackArrow({
    Key? key,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, bottom: 20, top: 5),
          child: IconButton(
              onPressed: () {
                context.go(route);
              },
              icon: Icon(
                Icons.arrow_back_rounded,
              )),
        ),
      ],
    );
  }
}
