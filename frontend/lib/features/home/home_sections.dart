import 'package:flutter/material.dart';
import 'package:frontend/features/home/home_sections_widgets.dart/impact_widgets.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
      color: Color.fromRGBO(244, 192, 19, 1),
      child: Padding(
        padding: EdgeInsets.only(bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'PENCILS TO PEOPLE',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 100,
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                  minimumSize: Size(220, 90), backgroundColor: Colors.black),
              child: Text(
                'OUR STORY',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class MissionStatementSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 600,
        color: Color.fromRGBO(245, 245, 220, 1),
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1.5)),
              ),
            ),
            SizedBox(
              width: 60,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Our Vision',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.8,
                    endIndent: 150,
                  ),
                  Text(
                    'A world where every student, regardless of circumstance, has unlimited access to the resources they need to achieve boundless educational success.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Our Mission',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 0.8,
                    endIndent: 150,
                  ),
                  Expanded(
                    child: Text(
                      'Pencils to People is committed to empowering students by providing essential educational resources to those in need. As a public charity, we strive to break down barriers to learning, ensuring every child has the tools to unlock their full potential and shape a brighter future.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 4, // Limit to 4 lines
                      overflow:
                          TextOverflow.ellipsis, // Adds "..." if it overflows
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class ImpactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 350,
        color: const Color.fromARGB(255, 255, 148, 86),
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImpactWidgetCard(
                  number: '\$800',
                  description:
                      'Dollars raised for the Lāhui Legacy Fund scholarship'),
              SizedBox(width: 50),
              ImpactWidgetCard(
                  number: '5',
                  description: 'Events held at various elementary schools'),
              SizedBox(width: 50),
              ImpactWidgetCard(
                  number: 'X',
                  description: 'Volunteers participated across all events'),
              SizedBox(width: 50),
              ImpactWidgetCard(
                  number: 'X',
                  description: 'Total volunteer hours contributed'),
            ],
          ),
        ));
  }
}
