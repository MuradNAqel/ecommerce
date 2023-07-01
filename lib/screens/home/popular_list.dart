import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../constants.dart';
import '../details/details.dart';

class PopularProductsListview extends StatefulWidget {
  const PopularProductsListview({super.key});

  @override
  State<PopularProductsListview> createState() =>
      _PopularProductsListviewState();
}

class _PopularProductsListviewState extends State<PopularProductsListview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: EdgeInsets.only(left: 20),
      child: ListView.builder(
        padding: EdgeInsets.only(right: 10, top: 10, bottom: 10),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: popularProductsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      image: DecorationImage(
                        image:
                            ExactAssetImage(popularProductsList[index].imgPath),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: InkWell(
                    onTap: () => {
                      context.go(detailsScreen,
                          extra: Product(
                            title: popularProductsList[index].title,
                            brandCount: popularProductsList[index].brandCount,
                            category: popularProductsList[index].category,
                            imgPath: popularProductsList[index].imgPath,
                            isLiked: popularProductsList[index].isLiked,
                            price: popularProductsList[index].price,
                          ))
                    },
                  ),
                ),
                SizedBox(
                  width: 130,
                  child: Text(
                    popularProductsList[index].title,
                    softWrap: true,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$${popularProductsList[index].price.toString()}',
                          style: Theme.of(context).textTheme.labelMedium),
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: popularProductsList[index].isLiked
                            ? Color.fromRGBO(254, 235, 227, 1)
                            : Colors.grey.shade100,
                        child: InkWell(
                          child: SvgPicture.asset(
                              'assets/icons/Heart Icon_2.svg',
                              color: popularProductsList[index].isLiked
                                  ? Colors.red
                                  : Colors.grey.shade300),
                          onTap: () {
                            popularProductsList[index].isLiked =
                                !popularProductsList[index].isLiked;
                            setState(() {});
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
