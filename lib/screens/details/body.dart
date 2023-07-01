import 'package:ecommerce/screens/details/product_color.dart';
import 'package:ecommerce/screens/details/product_description.dart';
import 'package:ecommerce/screens/details/product_img_preview.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../shared_widgets/button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(children: [
            ProductPreview(),
          ]),
        ),
        ProductDiscription(),
        ProductColor(),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: ContinueButton(
              route: homeScreenPath,
            ),
          ),
        )
      ],
    );
  }
}
