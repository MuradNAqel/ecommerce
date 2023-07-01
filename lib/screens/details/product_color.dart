import 'package:flutter/material.dart';

class ProductColor extends StatelessWidget {
  const ProductColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.purple,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.brown,
                ),
                SizedBox(
                  width: 10,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.orangeAccent,
                    ),
                    CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.grey.shade100,
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Center(
                      child: Icon(
                    Icons.remove,
                    color: Colors.deepOrange,
                  )),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child:
                      Center(child: Icon(Icons.add, color: Colors.deepOrange)),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
