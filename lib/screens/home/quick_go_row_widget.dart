import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuickGoRowBox extends StatelessWidget {
  String txt;
  String iconPath;
  QuickGoRowBox({
    Key? key,
    required this.txt,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Color.fromRGBO(253, 235, 221, 1.0),
              borderRadius: BorderRadius.circular(10)),
          child: SizedBox(
            child: Center(
              child: InkWell(
                child: SvgPicture.asset(
                  iconPath,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
        ),
        Text(txt)
      ],
    );
  }
}
