import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class RecentProject extends StatefulWidget {
  const RecentProject({Key? key}) : super(key: key);

  @override
  State<RecentProject> createState() => _RecentProjectState();
}

class _RecentProjectState extends State<RecentProject> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.35,
              width: size.width * 0.25,
              decoration: BoxDecoration(
                color: bodyColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(width: 30),
            Container(
              height: size.height * 0.35,
              width: size.width * 0.25,
              decoration: BoxDecoration(
                color: bodyColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(width: 30),
            Container(
              height: size.height * 0.35,
              width: size.width * 0.25,
              decoration: BoxDecoration(
                color: bodyColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.35,
              width: size.width * 0.25,
              decoration: BoxDecoration(
                color: bodyColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(width: 30),
            Container(
              height: size.height * 0.35,
              width: size.width * 0.25,
              decoration: BoxDecoration(
                color: bodyColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            const SizedBox(width: 30),
            Container(
              height: size.height * 0.35,
              width: size.width * 0.25,
              decoration: BoxDecoration(
                color: bodyColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
