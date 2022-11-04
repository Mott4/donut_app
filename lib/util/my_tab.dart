import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyTab extends StatelessWidget {
  final String iconPath;

  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        child: Image.asset(
          iconPath,
          color: Colors.grey[800],
        ),
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
      ),
    );
  }
}