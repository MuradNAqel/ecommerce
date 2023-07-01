import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/details/body.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../shared_widgets/button.dart';
import 'product_color.dart';
import 'product_description.dart';
import 'product_img_preview.dart';

class DetailsScreen extends StatelessWidget {
  Product product;

  DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Body(),
      ),
    );
  }
}
