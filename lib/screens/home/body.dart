import 'package:ecommerce/screens/home/popular_list.dart';
import 'package:ecommerce/screens/home/quick_go_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/screens/home/special_offer.dart';

import '../../constants.dart';
import 'categories_list.dart';
import 'list_header.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 25),
            child: SpecialOffer(),
          ),
          SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                QuickGoRowBox(
                  iconPath: 'assets/icons/Flash Icon.svg',
                  txt: 'Flash\nDeal',
                ),
                QuickGoRowBox(
                    txt: 'Bill', iconPath: 'assets/icons/Bill Icon.svg'),
                QuickGoRowBox(
                    txt: 'Game', iconPath: 'assets/icons/Game Icon.svg'),
                QuickGoRowBox(
                    txt: 'Daily\nGift', iconPath: 'assets/icons/Gift Icon.svg'),
                QuickGoRowBox(
                    txt: 'More', iconPath: 'assets/icons/Discover.svg')
              ],
            ),
          ),
          ListHeader(title: 'Special for you'),
          categoriesList(specialProductsList: specialProductsList),
          ListHeader(title: 'Popular Products'),
          PopularProductsListview()
        ],
      ),
    );
  }
}
