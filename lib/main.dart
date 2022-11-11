import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/responsive_layout/layout.dart';
import 'package:portfolio/responsive_layout/web_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      // theme: ThemeData(
      //   fontFamily: 'League Spartan',
      // ),
      theme: iconBool ? lightTheme : darkTheme,
      title: 'Olawills | Software Engineer, Mobile Developer, Designer',
      home: const LayoutPage(),
    );
  }
}
