import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'app_mobile_layout.dart';
import 'web_desktop_layout.dart';
import 'web_mobile_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (kIsWeb) {
      if (screenWidth > 900) {
        return WebDesktopLayout();
      } else {
        return WebMobileLayout();
      }
    } else {
      return AppMobileLayout();

      // if (screenWidth > 600) {
      //   return TabletLayout();
      // } else {
      //   return MobileLayout();
      // }
    }
  }
}
