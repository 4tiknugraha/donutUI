import 'package:flutter/material.dart';

import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothe_tab.dart';
import '../util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> myTabs = [
    // donut tabs
    MyTab(
      iconPath: 'assets/icons/donut.png',
    ),
    // burger tabs
    MyTab(
      iconPath: 'assets/icons/burger.png',
    ),
    // smoothe tabs
    MyTab(
      iconPath: 'assets/icons/soda.png',
    ),
    // pancake tabs
    MyTab(
      iconPath: 'assets/icons/cupcake.png',
    ),
    // pizza tabs
    MyTab(
      iconPath: 'assets/icons/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "i want to eat ",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "Eat",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            // tab bar
            TabBar(tabs: myTabs),
            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // Donut Page
                  DonutTab(),
                  // Burger Page
                  BurgerTab(),
                  // Smoothe Page
                  SmootheTab(),
                  // Pancake Page
                  PancakeTab(),
                  // Pizza Page
                  PizzaTab(),
                ],
                // donut page
              ),
            )
          ],
        ),
      ),
    );
  }
}
