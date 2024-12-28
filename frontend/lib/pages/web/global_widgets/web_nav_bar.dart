import 'package:flutter/material.dart';
import 'web_nav_bar_buttons.dart';

class WebNavBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    String? currentRoute = ModalRoute.of(context)?.settings.name;
    return AppBar(
      toolbarHeight: 50,
      backgroundColor: Color.fromRGBO(246, 132, 168, 1),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/PencilstoPeople_Logo.png',
            fit: BoxFit.contain,
            height: 45,
          ),
          WebNavButton(
            label: 'Home',
            route: '/home',
            currentRoute: currentRoute,
          ),
          WebNavButton(
            label: 'Get Involved',
            route: '/get_involved',
            currentRoute: currentRoute,
          ),
          WebNavButton(
            label: 'Scholarship',
            route: '/scholarship',
            currentRoute: currentRoute,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color.fromRGBO(244, 192, 19, 1),
            ),
            child: Text(
              'Donate',
              style: TextStyle(
                  fontFamily: 'Montserray', fontSize: 21, color: Colors.black),
            ),
            onPressed: () => {},
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Color.fromRGBO(255, 82, 137, 1)),
            child: Center(
              child: Icon(Icons.person,
                  color: Color.fromRGBO(246, 132, 168, 1), size: 30),
            ),
          ),
        ],
      ),
    );
  }

  @override
  final Size preferredSize = const Size.fromHeight(50); // AppBar height
}
