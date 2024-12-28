import 'package:flutter/material.dart';
import 'app_home_page_widgets.dart';

class AppHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [UpcomingEventWidget(), MyStatsWidget()],
      ),
    );
  }
}
