import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String label;
  final String route;
  final String? currentRoute;

  const NavButton({
    Key? key,
    required this.label,
    required this.route,
    required this.currentRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isHighlighted = currentRoute == route;

    return TextButton(

      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: isHighlighted
          ? Color.fromRGBO(223, 108, 141, 0.65)
          : Color.fromRGBO(0, 0, 0, 0)
      ),

      child: Text(
        label,
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
        )
      ),

      onPressed: () => Navigator.pushNamedAndRemoveUntil(context, route, (_) => false),
    );
  }
}