import 'package:flutter/material.dart';

import 'details_page_header.dart';

class ProductPreview extends StatefulWidget {
  const ProductPreview({super.key});

  @override
  State<ProductPreview> createState() => _ProductPreviewState();
}

class _ProductPreviewState extends State<ProductPreview> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.45,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 30),
                child:
                    Image.asset('assets/images/Image Popular Product 1.png')),
            const DetailsPageHeader(),
            Positioned(
                bottom: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SelectedImage('assets/images/ps4_console_white_1.png'),
                      productExtraImage(
                          'assets/images/ps4_console_white_2.png'),
                      productExtraImage(
                          'assets/images/ps4_console_white_3.png'),
                      productExtraImage(
                          'assets/images/ps4_console_white_4.png'),
                    ],
                  ),
                ))
          ],
        ));
  }
}

Container SelectedImage(String imgPath) {
  return Container(
    width: 50,
    height: 50,
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        border: Border.all(color: Colors.deepOrange)),
    child: Image.asset(imgPath),
  );
}

Container productExtraImage(String imgPath) {
  return Container(
    width: 50,
    height: 50,
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
    ),
    child: Image.asset(imgPath),
  );
}
