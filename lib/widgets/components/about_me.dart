import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/responsive_layout/web_layout.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'About Me',
          style: TextStyle(
            fontSize: 24,
            color: iconBool ? titleColor : mostUsedColor,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          constraints: const BoxConstraints(
            maxHeight: 700,
            maxWidth: 500,
          ),
          child: Text(
            'Hello! My name is Willaims Olabamidele and I enjoy creating things that live on the internet. My interest in web development started back in 2012 when I decided to try editing custom Tumblr themes — turns out hacking together a custom reblog button taught me a lot about HTML & CSS!',
            style: TextStyle(
              color: iconBool ? titleColor : mostUsedColor,
            ),
          ),
        ),
        const SizedBox(width: 50),
      ],
    );
  }
}
