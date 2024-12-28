import 'package:flutter/material.dart';

class UpcomingEventWidget extends StatelessWidget {
  const UpcomingEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: screenHeight * screenWidth / 750,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(244, 192, 19, 1),
            Color.fromRGBO(244, 170, 19, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(alignment: Alignment.bottomCenter, children: [
            Container(
                width: screenWidth * 0.9,
                height: screenHeight * screenWidth / 1200,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  )
                ], borderRadius: BorderRadius.circular(24)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('assets/images/example_event.jpg'),
                  ),
                )),
            Positioned(
              bottom: 0,
              child: Container(
                width: screenWidth * 0.9,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.6),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(24))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Webling Elementary Painting',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today,
                            color: Colors.white, size: 18),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Saturday, Feb 1 - XX:XX AM',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: screenWidth * 0.04,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.white, size: 18),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '99-370 Paihi St, Aiea, HI',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: screenWidth * 0.035,
                              color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
          SizedBox(height: screenHeight * screenWidth / 20000),
          Container(
            width: screenWidth * 0.6,
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [Colors.orangeAccent, Colors.deepOrange],
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4))
                ]),
            child: Center(
              child: Text(
                'Upcoming Event',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: screenHeight * screenWidth / 20000),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange[800],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 6,
              padding: EdgeInsets.symmetric(
                vertical: 14,
                horizontal: screenWidth * 0.25,
              ),
            ),
            child: Text(
              'Volunteer Now',
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyStatsWidget extends StatelessWidget {
  final List<Map<String, dynamic>> stats = [
    {'value': 'X', 'label': 'Events \n Attended'},
    {'value': 'X', 'label': 'Volunteer \n Hours'},
    {'value': 'X', 'label': 'Dollars \n Raised'},
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: screenHeight * screenWidth / 1500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(30, 30, 30, 1),
            Color.fromRGBO(66, 66, 66, 1),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: screenHeight * 0.01),
          Container(
            width: screenWidth * 0.6,
            height: screenHeight * 0.05,
            decoration: BoxDecoration(
                color: Colors.orangeAccent.shade200,
                borderRadius: BorderRadius.circular(16)),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Your Contributions',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...stats.map(
                (stat) => Container(
                  width: screenWidth * 0.28,
                  height: screenHeight * screenWidth / 2450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        colors: [Colors.orangeAccent, Colors.deepOrange],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 12,
                          offset: Offset(0, 6),
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '${stat['value']}',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth * 0.12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            stat['label'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
        ],
      ),
    );
  }
}
