import 'package:ecommerce/screens/home/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NestedView extends StatelessWidget {
  const NestedView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [appBar(context)];
      },
      body: Body(),
    );
  }

  SliverAppBar appBar(BuildContext context) {
    return SliverAppBar(
      floating: true,
      actions: [
        action1(),
        action2(),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 27),
        child: searchField(),
      ),
      leadingWidth: MediaQuery.of(context).size.width * 0.7,
    );
  }

  Stack action2() {
    return Stack(children: [
      Center(
        child: Container(
          padding: EdgeInsets.all(2),
          margin: EdgeInsets.only(right: 15),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: InkWell(
              child: SvgPicture.asset('assets/icons/Bell.svg'),
            ),
          ),
        ),
      ),
      Positioned(
        top: 5,
        right: 12,
        child: CircleAvatar(
          backgroundColor: Colors.deepOrange,
          radius: 7,
          child: Center(
            child: Text(
              '3',
              style: TextStyle(fontSize: 10),
            ),
          ),
        ),
      )
    ]);
  }

  Container action1() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.all(2),
      child: CircleAvatar(
          backgroundColor: Colors.grey.shade100,
          child: InkWell(
            child: SvgPicture.asset('assets/icons/Cart Icon.svg'),
          )),
    );
  }

  TextField searchField() {
    return TextField(
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: 'Search product',
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: Colors.blueGrey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          )),
    );
  }
}
