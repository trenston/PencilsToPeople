import 'package:flutter/material.dart';

class WebNavButton extends StatelessWidget {
  final String label;
  final String route;
  final String? currentRoute;

  const WebNavButton({
    super.key,
    required this.label,
    required this.route,
    required this.currentRoute,
  });

  @override
  Widget build(BuildContext context) {
    bool isHighlighted = currentRoute == route;

    return TextButton(
      style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: isHighlighted
              ? Color.fromRGBO(223, 108, 141, 0.65)
              : Color.fromRGBO(0, 0, 0, 0)),
      child: Text(label,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20,
          )),
      onPressed: () =>
          Navigator.pushNamedAndRemoveUntil(context, route, (_) => false),
    );
  }
}
