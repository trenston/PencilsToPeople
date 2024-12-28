import 'package:flutter/material.dart';
import 'layouts/responsive_layout.dart';
import 'package:frontend/pages/web/home/web_home_page.dart';
import 'package:frontend/pages/web/web_get_involved_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(),
      routes: {
        '/home': (context) => WebHomePage(),
        '/get_involved': (context) => WebGetInvolvedPage()
      },
    );
  }
}
