import 'package:flutter/material.dart';
import 'package:frontend/pages/web/global_widgets/web_nav_bar.dart';
import 'web_home_page_widgets.dart';
import 'package:frontend/pages/web/global_widgets/web_footer.dart';

class WebHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WebNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeroSection(),
              MissionStatementSection(),
              ImpactSection(),
              Footer(),
            ],
          ),
        ));
  }
}
