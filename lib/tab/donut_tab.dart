import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  //  list of donuts
  List donutsOnsale = [
    //[ donutFlavor, donutPrice, donutColor, imageName]
    ["Ice Cream", "38", Colors.blue, "assets/images/donut.png"],
    ["Ice Cream", "45", Colors.red, "assets/images/donut1.png"],
    ["Ice Cream", "84", Colors.pink, "assets/images/donut2.png"],
    ["Ice Cream", "95", Colors.orange, "assets/images/donut_3.png"],
    // ["Ice Cream", "4000", Colors.green, "assets/images/donut4.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnsale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnsale[index][0],
          donutPrice: donutsOnsale[index][1],
          donutColor: donutsOnsale[index][2],
          imageName: donutsOnsale[index][3],
        );
      },
    );
  }
}
