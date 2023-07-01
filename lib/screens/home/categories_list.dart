import 'package:flutter/material.dart';

import '../../models/product.dart';

class categoriesList extends StatelessWidget {
  const categoriesList({
    super.key,
    required this.specialProductsList,
  });

  final List<Product> specialProductsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      height: 160,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.only(right: 10, top: 10, bottom: 10),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: specialProductsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(right: 30, top: 10, bottom: 10, left: 0),
            child: Container(
              width: 290,
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage(
                              specialProductsList[index].imgPath)),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    height: 120,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        specialProductsList[index].title,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Text(
                        '${specialProductsList[index].brandCount} Brands',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
