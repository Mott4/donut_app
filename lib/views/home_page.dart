import 'package:donut_app/tabs/burguer_dart.dart';
import 'package:donut_app/tabs/donut_tab.dart';
import 'package:donut_app/tabs/pancake_tab.dart';
import 'package:donut_app/tabs/pizza_tab.dart';
import 'package:donut_app/tabs/smoothie_tab.dart';
import 'package:donut_app/util/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> myTabs = const [
    // donut tabs
    // ===============================
    MyTab(
      iconPath: 'lib/icons/donut.png',
    ),
    // ===============================
    //  burguer tab
    MyTab(
      iconPath: 'lib/icons/burger.png',
    ),
    // ===============================
    // pizza tab
    MyTab(
      iconPath: 'lib/icons/pizza.png',
    ),
    // ===============================
    // pancakes tab
    MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    // ===============================
    // smoothie tab
    MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        drawer: const Drawer(
          child: Center(
            child: Text('Drawer here!'),
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
          ),
          actions: [
            // ===============================
            // menu button
            // ===============================
            Builder(builder: (context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  size: 36,
                ),
                color: Colors.grey[800],
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            }),
            SizedBox(
              width: 242,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              // ===============================
              // account button
              // ===============================
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 36,
                ),
                color: Colors.grey[800],
                onPressed: () => {},
                // ===============================
                // account button tapped
                // ===============================
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              // ===============================
              // I WANT TO EAT
              // ===============================
              child: Row(
                children: [
                  Text(
                    'I want to...  ',
                    style: TextStyle(fontSize: 24, color: Colors.grey[800]),
                  ),
                  Text(
                    ' EAT',
                    style: TextStyle(fontSize: 32, color: Colors.grey[800], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // ===============================
            // tab bar
            // ===============================
            TabBar(tabs: myTabs),
            // ===============================
            // tab bar view
            // ===============================
            Expanded(
              child: TabBarView(
                children: [
                  // ===============================
                  // donut page
                  DonutTab(),
                  // ===============================
                  // burger page
                  BurguerTab(),
                  // ===============================
                  // smoothie page
                  SmoothieTab(),
                  // ===============================
                  // pancake page
                  PancakeTab(),
                  // ===============================
                  // pizza page
                  PizzaTab(),
                  // ===============================
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
