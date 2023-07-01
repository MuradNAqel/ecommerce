import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDiscription extends StatefulWidget {
  ProductDiscription({
    super.key,
  });

  @override
  State<ProductDiscription> createState() => _ProductDiscriptionState();
}

class _ProductDiscriptionState extends State<ProductDiscription> {
  bool isLiked = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.3,
        padding: EdgeInsets.only(left: 20, bottom: 15, top: 15),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.62,
            child: Stack(
              children: [
                Text('Wireless Controller for PS4',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontSize: 20, color: Colors.black)),
                Positioned(
                    top: 0,
                    right: -1,
                    child: Text(
                      'TM',
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 60,
                height: 45,
                decoration: BoxDecoration(
                    color: isLiked
                        ? Color.fromRGBO(255, 229, 228, 1)
                        : Colors.grey.shade100,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: InkWell(
                    onTap: () => setState(() {
                      isLiked = !isLiked;
                    }),
                    child: SvgPicture.asset(
                      'assets/icons/Heart Icon_2.svg',
                      color: isLiked ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          ),
          Text(
              'Wireless Controller for PS4  Gives you what\nyou want in your gaming from over precision\ncontrol your games to sharing ... '),
          TextButton(
              onPressed: () {},
              child: Text(
                'See More Details >',
                style: Theme.of(context).textTheme.labelMedium,
              )),
        ]));
  }
}
