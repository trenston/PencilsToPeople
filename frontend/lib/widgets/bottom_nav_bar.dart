import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home)),
      BottomNavigationBarItem(icon: Icon(Icons.event)),
      BottomNavigationBarItem(icon: Icon(Icons.school)),
      BottomNavigationBarItem(icon: Icon(Icons.person)),
    ]);
  }
}
