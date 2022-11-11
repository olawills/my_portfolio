import 'package:flutter/material.dart';
import 'package:portfolio/responsive_layout/custom_screen.dart';
import 'package:portfolio/responsive_layout/mobile_layout.dart';
import 'package:portfolio/responsive_layout/responsive_layout.dart';
import 'package:portfolio/responsive_layout/small_screen.dart';
import 'package:portfolio/responsive_layout/web_layout.dart';

class LayoutPage extends StatelessWidget {
 const  LayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveWidget(
        largeScreen: WebLayout(),
        mediumScreen: MobileLayout(),
        smallScreen: SmallScreenDevices(),
        customScreen: CustomScreenDevices(),
      ),
    );
  }
}
