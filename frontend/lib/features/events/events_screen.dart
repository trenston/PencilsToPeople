import 'package:flutter/material.dart';
import 'package:frontend/global_widgets/nav_bar.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  _EventsScreenState createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(244, 192, 19, 1),
        appBar: AppBar(
          toolbarHeight: 90,
          title: NavBar(),
          backgroundColor: Color.fromRGBO(246, 132, 168, 1),
        ));
  }
}
