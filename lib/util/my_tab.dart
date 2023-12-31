import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String textTitle;
  const MyTab({super.key, required this.iconPath, required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(
          iconPath,
          color: Colors.pink[600],
        ),
      ),
    );
  }
}
