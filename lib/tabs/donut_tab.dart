import 'package:donut_app/util/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  // List of donuts
  List donutsOnSale = [
    // [donutsFlavor, donutPrice, donutColor, image name];
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Chocolate", "18", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Grape Ape", "24", Colors.green, "lib/images/grape_donut.png"],
    ["Strawberry", "48", Colors.red, "lib/images/strawberry_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12.0),
      itemCount: donutsOnSale.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutsFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
