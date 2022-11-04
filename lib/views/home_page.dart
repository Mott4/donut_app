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
    MyTab(
      iconPath: 'lib/icons/donut.png',
    ),
   //  burguer tab
    MyTab(
      iconPath: 'lib/icons/burguer.png',
    ),
    // pizza tab
    MyTab(
      iconPath: 'lib/icons/pizza.png',
    ),
    // pancakes tab
    MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              // menu button ======================================
              icon: Icon(
                Icons.menu,
                size: 36,
              ),
              color: Colors.grey[800],
              onPressed: () => {},
              // open drawer ======================================
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              // account button ======================================
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 36,
                ),
                color: Colors.grey[800],
                onPressed: () => {},
                // account button tapped ======================================
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              // I WANT TO EAT ======================================
              child: Row(
                children: [
                  Text(
                    'I want to eat',
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
    
            // tab bar
            TabBar(tabs: myTabs),
    
            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  
                  // burger page
    
                  // smoothie page
                  
                  // pancake page
    
                  // pizza page
    
                ],
              ),
            ),
    
          ],
        ),
      ),
    );
  }
}
