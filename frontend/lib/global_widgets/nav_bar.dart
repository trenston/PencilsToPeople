import 'package:flutter/material.dart';
import 'nav_bar_buttons.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize = const Size.fromHeight(90); // AppBar height

  Widget build(BuildContext context) {
    String? currentRoute = ModalRoute.of(context)?.settings.name;

    return AppBar(
        toolbarHeight: 90,
        backgroundColor: Color.fromRGBO(246, 132, 168, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'icons/PencilstoPeople_Logo.png',
              fit: BoxFit.contain,
              height: 70,
            ),
            NavButton(
              label: 'Home',
              route: '/home',
              currentRoute: currentRoute,
            ),
            NavButton(
              label: 'Events',
              route: '/events',
              currentRoute: currentRoute,
            ),
            NavButton(
              label: 'Get Involved',
              route: '/get_involved',
              currentRoute: currentRoute,
            ),
            NavButton(
              label: 'Scholarship',
              route: '/scholarship',
              currentRoute: currentRoute,
            ),
            NavButton(
              label: 'Forms',
              route: '/forms',
              currentRoute: currentRoute,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(244, 192, 19, 1),
              ),
              child: Text(
                'Donate',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 21,
                    color: Colors.black),
              ),
              onPressed: () => {},
            )
          ],
        ));
  }
}
