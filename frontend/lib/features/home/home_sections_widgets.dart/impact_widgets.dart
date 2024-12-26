import 'package:flutter/material.dart';

class ImpactWidgetCard extends StatelessWidget {
  final String number;
  final String description;

  const ImpactWidgetCard({
    Key? key,
    required this.number,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number,
            style: TextStyle(
                fontSize: 70,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 84, 65, 250)),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.8,
            endIndent: 175,
          ),
          SizedBox(
              width: 400,
              child: Text(
                description,
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Poppins', color: Colors.black),
              )),
        ],
      ),
    );
  }
}
