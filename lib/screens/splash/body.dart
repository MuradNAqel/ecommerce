import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../shared_widgets/button.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> imgList = ['splash_1.png', 'splash_2.png', 'splash_3.png'];
  int currentPageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        headerWelcomeTxt(context),
        imgCaruselSlider(context),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ContinueButton(route: registerScreenPath),
        ),
      ],
    );
  }

  Widget headerWelcomeTxt(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'TOKOTO',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'Welcome to Tokoto, Lets shop!',
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }

  Widget imgCaruselSlider(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.35,
            viewportFraction: 1,
            onPageChanged: (index, reason) => {currentPageIdx = index},
          ),
          items: imgList
              .map(
                (item) => Center(
                    child: Image.asset(
                  'assets/images/$item',
                  fit: BoxFit.fitHeight,
                )),
              )
              .toList(),
        ),
        const SizedBox(
          height: 40,
        ),
        AnimatedSmoothIndicator(
          activeIndex: currentPageIdx,
          count: 3,
          effect: const ExpandingDotsEffect(
              activeDotColor: Colors.deepOrange,
              dotColor: Colors.grey,
              dotHeight: 8,
              dotWidth: 8),
        )
      ],
    );
  }
}
