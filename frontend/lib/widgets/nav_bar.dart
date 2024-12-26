import 'package:flutter/material.dart';
import 'nav_bar_buttons.dart';

class NavBar extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    String? currentRoute = ModalRoute.of(context)?.settings.name;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'icons/PencilstoPeople_Logo.png',
          fit: BoxFit.contain,
          height: 75,
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
      ],
    );
  }
}