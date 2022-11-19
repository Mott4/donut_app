import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
// ===============================
// [donutsFlavor, donutPrice, donutColor, image name];
// ===============================
  final String donutsFlavor;
  final String donutPrice;
  // ignore: prefer_typing_uninitialized_variables
  final donutColor;
  final String imageName;

  final double borderRadius = 12;

  const DonutTile({
    required this.donutsFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            // ===============================
            // price
            // ===============================
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      color: donutColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            // ===============================
            // donut picture
            // ===============================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16),
              child: Image.asset(imageName),
            ),
            // ===============================
            // ===============================
            // donut flavor
            // ===============================
            Text(
              donutsFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              'Dunkins',
              style: TextStyle(color: Colors.grey[600]),
            ),
            // ===============================
            // love icon + add button
            // ===============================
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  // ===============================
                  // plus button
                  // ===============================
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.grey[600],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
