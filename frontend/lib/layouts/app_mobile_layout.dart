import 'package:flutter/material.dart';
import 'package:frontend/pages/app/global_widgets/app_nav_bar.dart';
import 'package:frontend/pages/app/home/app_home_page.dart';
import 'package:frontend/pages/app/get_involved_page.dart';
import 'package:frontend/pages/app/scholarship_page.dart';

class AppMobileLayout extends StatefulWidget {
  const AppMobileLayout({super.key});

  @override
  _AppMobileLayoutState createState() => _AppMobileLayoutState();
}

class _AppMobileLayoutState extends State<AppMobileLayout> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    AppHomePage(),
    GetInvolvedPage(),
    ScholarshipPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppNavBar(),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(246, 132, 168, 1),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontFamily: 'Montserrat'),
        unselectedLabelStyle: const TextStyle(fontFamily: 'Montserrat'),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Get Involved',
            icon: Icon(Icons.event),
          ),
          BottomNavigationBarItem(
            label: 'Scholarship',
            icon: Icon(Icons.school),
          ),
        ],
      ),
    );
  }
}
