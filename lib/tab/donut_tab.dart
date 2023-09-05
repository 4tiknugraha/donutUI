import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  //  list of donuts
  List donutsOnsale = [
    //[ donutFlavor, donutPrice, donutColor, imageName]
    ["Ice Cream", "4000", Colors.blue, "assets/images/donut.png"],
    ["Ice Cream", "5000", Colors.blueGrey, "assets/images/donut1.png"],
    ["Ice Cream", "4000", Colors.yellow, "assets/images/donut2.png"],
    ["Ice Cream", "4000", Colors.pink, "assets/images/donut3.png"],
    // ["Ice Cream", "4000", Colors.green, "assets/images/donut4.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutsOnsale.length,
        padding: EdgeInsets.all(12),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnsale[index][0],
            donutPrice: donutsOnsale[index][1],
            donutColor: donutsOnsale[index][2],
            imageName: donutsOnsale[index][3],
          );
        });
  }
}
