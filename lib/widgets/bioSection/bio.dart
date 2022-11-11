import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({
    Key? key,
    required this.text,
    required this.writeUp,
    required this.loveThings,
    required this.tools,
    required this.icon,
    required this.designWriteup,
    required this.t1,
    required this.t2,
    required this.t3,
    required this.t4,
    required this.t5,
  }) : super(key: key);
  final String text;
  final String writeUp;
  final String loveThings;
  final String tools;

  final IconData icon;
  final String designWriteup;
  final String t1;
  final String t2;
  final String t3;
  final String t4;
  final String t5;

  @override
  Widget build(BuildContext context) {
    // final themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 40,
            backgroundColor: circleColor,
            child: Icon(
              icon,
              color: titleColor,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            text,
            style: const TextStyle(
              fontSize: 20,
              color: titleColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              writeUp,
              style: const TextStyle(
                fontSize: 18,
                color: backgroundColor,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Text(
            loveThings,
            style: const TextStyle(
              fontSize: 18,
              color: bodyColor,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              tools,
              style: const TextStyle(
                fontSize: 18,
                color: backgroundColor,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Text(
            designWriteup,
            style: const TextStyle(
              fontSize: 18,
              color: bodyColor,
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Text(
                t1,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                t2,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                t3,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                t4,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                t5,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
