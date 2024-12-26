import 'package:flutter/material.dart';
import 'package:frontend/global_widgets/nav_bar.dart';
import 'package:frontend/features/home/home_sections.dart';
import 'package:frontend/global_widgets/footer.dart';

class HomeScreen extends StatefulWidget {
  //final String userEmail;
  //const HomeScreen({super.key}); // required this.userEmail
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 192, 19, .3),
      appBar: NavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(),
            MissionStatementSection(),
            ImpactSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
