import 'package:flutter/material.dart';
import 'package:frontend/widgets/nav_bar.dart';

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
      backgroundColor: Color.fromRGBO(244, 192, 19, 1),
      appBar: AppBar(
        toolbarHeight: 90,
        title: NavBar(),
        backgroundColor: Color.fromRGBO(246, 132, 168, 1),
      ),
      body: Stack(

      )
    );
  }
}