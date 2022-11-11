import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/bioSection/bio.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BioSection extends StatelessWidget {
  const BioSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: size.height * 1,
          width: size.width * 0.27,
          // decoration: const BoxDecoration(
          //   color: mostUsedColor,
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(20),
          //     bottomLeft: Radius.circular(20),
          //   ),
          // ),
          child: const Card(
            color: mostUsedColor,
            child: AboutMeSection(
              icon: FontAwesomeIcons.terminal,
              text: 'Mobile Developer',
              writeUp:
                  ' I build clean Apps that are, Scaleable Fast and Flexible',
              loveThings: 'Apps i have built:',
              tools: 'Yts Search Engine, WallPaper Hub, ',
              designWriteup: 'Dev Tools:',
              t1: 'Visual Studio Code',
              t2: 'Android Studio',
              t3: 'Android Virtual Device',
              t4: 'Iphone Virtual Device',
              t5: 'Flutter SDk',
            ),
          ),
        ),
        Container(
          height: size.height * 1,
          width: size.width * 0.27,
          // decoration: const BoxDecoration(
          //   color: mostUsedColor,
          // ),
          child: const Card(
            color: mostUsedColor,
            child: AboutMeSection(
              icon: FontAwesomeIcons.book,
              text: 'Software Engineer',
              writeUp:
                  ' I build websites,Backend Servers, From Scratch and Ready made',
              loveThings: 'Language I Speak:',
              tools: 'JavaScript, Flutter, Python, Firebase, C,',
              designWriteup: 'Design Tools',
              t1: 'Github',
              t2: 'Visual Studio Code',
              t3: 'Python',
              t4: 'C Programming',
              t5: 'JavaScript',
            ),
          ),
        ),
        Container(
          height: size.height * 1,
          width: size.width * 0.28,
          // decoration: const BoxDecoration(
          //   color: mostUsedColor,
          //   borderRadius: BorderRadius.only(
          //     topRight: Radius.circular(15),
          //     bottomRight: Radius.circular(15),
          //   ),
          // ),
          child: const Card(
            color: mostUsedColor,
            child: AboutMeSection(
              icon: FontAwesomeIcons.layerGroup,
              text: 'Designer',
              writeUp:
                  ' I get Inspiration from Existing, Designs to give a perfect result',
              loveThings: 'Things i enjoy Designing:',
              tools: 'UI, Ux,',
              designWriteup: 'Design Tools',
              t1: 'Figma',
              t2: 'FontAwesome',
              t3: 'Pen & Paper',
              t4: 'Corel Draw',
              t5: 'Affinity Designer',
            ),
          ),
        ),
      ],
    );
  }
}
