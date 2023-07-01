import 'package:flutter/material.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
          color: Color.fromRGBO(75, 50, 152, 1.0),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'A Summer Surprise',
            style:
                Theme.of(context).textTheme.labelLarge?.copyWith(fontSize: 13),
          ),
          Text(
            'Cashback 20%',
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
