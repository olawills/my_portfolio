import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/responsive_layout/web_layout.dart';

class WebAppBar extends StatefulWidget {
  final double? opacity;
  const WebAppBar({Key? key, this.opacity}) : super(key: key);

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  final List _hovering = [
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(width: size.width / 20),
        InkWell(
          // onHover: (value) {
          //   setState(() {
          //     value ? _hovering[0] = true : _hovering[0] = false;
          //   });
          // },
          onTap: () {},
          child: Column(
            children: [
              Text(
                "About Me",
                style: TextStyle(
                  color: iconBool ? bodyColor : mostUsedColor,
                  // _hovering[0] ? bodyColor : mostUsedColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                // visible: _hovering[0],
                child: Container(
                  height: 2,
                  width: 20,
                  color: const Color(0xff851441),
                ),
              )
            ],
          ),
        ),
        SizedBox(width: size.width / 20),
        InkWell(
          // onHover: (value) {
          //   setState(() {
          //     value ? _hovering[0] = true : _hovering[0] = false;
          //   });
          // },
          onTap: () {},
          child: Column(
            children: [
              Text(
                "My Projects",
                style: TextStyle(
                  color: iconBool ? bodyColor : mostUsedColor,
                  // color: _hovering[1] ? bodyColor : titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                // visible: _hovering[1],
                child: Container(
                  height: 2,
                  width: 20,
                  color: const Color(0xff851441),
                ),
              )
            ],
          ),
        ),
        SizedBox(width: size.width / 20),
        InkWell(
          // onHover: (value) {
          //   setState(() {
          //     value ? _hovering[2] = true : _hovering[0] = false;
          //   });
          // },
          onTap: () {},
          child: Column(
            children: [
              Text(
                "Contact Me",
                style: TextStyle(
                  color: iconBool ? bodyColor : mostUsedColor,
                  // color: _hovering[2] ? bodyColor : titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                // visible: _hovering[2],
                child: Container(
                  height: 2,
                  width: 20,
                  color: const Color(0xff851441),
                ),
              )
            ],
          ),
        ),
        SizedBox(width: size.width / 20),
        InkWell(
          // onHover: (value) {
          //   setState(() {
          //     value ? _hovering[3] = true : _hovering[0] = false;
          //   });
          // },
          onTap: () {},
          child: Column(
            children: [
              Text(
                "Resume",
                style: TextStyle(
                  color: iconBool ? bodyColor : mostUsedColor,
                  // color: _hovering[3] ? bodyColor : titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              Visibility(
                maintainAnimation: true,
                maintainState: true,
                maintainSize: true,
                // visible: _hovering[3],
                child: Container(
                  height: 2,
                  width: 20,
                  color: const Color(0xff851441),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}



    // "About Me",
    // "My Projects",
    // "Contact Me",
    // "My Resume"