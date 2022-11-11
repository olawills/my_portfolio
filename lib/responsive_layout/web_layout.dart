import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/appBar/web_appbar.dart';
import 'package:portfolio/widgets/components/about_me.dart';
import 'package:portfolio/widgets/emailWidget/email_screen.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

bool iconBool = true;
IconData iconLight = Icons.wb_sunny;
IconData iconDark = Icons.dark_mode_outlined;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
);

ThemeData darkTheme = ThemeData(
  
  brightness: Brightness.dark,
);

class _WebLayoutState extends State<WebLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final color = iconBool ? mostUsedColor : containerColor;

    return Scaffold(
      backgroundColor: color,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: iconBool ? mostUsedColor : containerColor,
            //Theme.of(context).scaffoldBackgroundColor,
            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: WebAppBar(),
              ),
              const SizedBox(width: 20),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      iconBool = !iconBool;
                    });
                  },
                  icon: Icon(
                    iconBool ? iconLight : iconDark,
                    color: iconBool ? titleColor : mostUsedColor,
                  ),
                ),
              ),
              SizedBox(width: size.width / 50),
            ],
          )
        ],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Software Engineer, Mobile Developer & Designer ",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: iconBool ? titleColor : mostUsedColor,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "I Design and Code Beautiful Websites like mine, Mobile Apps for both Android And IOS, and many more..  ",
                    style: TextStyle(
                      fontSize: 18,
                      color: iconBool ? titleColor : mostUsedColor,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                SvgPicture.asset(
                  'assets/images/rounded.svg',
                  width: size.width * 0.40,
                  height: size.height * 0.32,
                ),
                const SizedBox(height: 50),
                SvgPicture.asset(
                  'assets/images/softwares.svg',
                  width: size.width * 0.7,
                  height: size.height * 0.47,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxHeight: 500,
                      minHeight: 300,
                    ),
                    // height: size.height * 0.6,
                    width: size.width * 1,
                    color: bodyColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Hi, I\'m Williams Olabamidele Nice To Meet You.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(height: size.height * 0.06),
                        const Text(
                          'Since begining, my journey as a freelancer in Mobile and Web Development, i\' hv worked and built\ncountless Apps and websites, Educated Young minds and Collaborated with Talented People. ',
                          style: TextStyle(
                            fontSize: 16,
                            color: mostUsedColor,
                          ),
                        ),
                        SizedBox(height: size.height * 0.1),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            fixedSize: const Size(200, 50),
                            textStyle: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            primary: titleColor,
                            onPrimary: Colors.white,
                            elevation: 15,
                            shadowColor: titleColor,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'My Projects',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const AboutMe(),
                const SizedBox(height: 30),
                Text(
                  'My Projects',
                  style: TextStyle(
                    color: iconBool ? titleColor : mostUsedColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * 0.06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Here are a few past design projects I\'ve worked on. Want to see more?',
                      style: TextStyle(
                        fontSize: 18,
                        color: iconBool ? titleColor : mostUsedColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      child: Text(
                        'Email me',
                        style: TextStyle(
                          fontSize: 18,
                          color: iconBool ? titleColor : mostUsedColor,
                        ),
                      ),
                      onTap: () => Get.to(
                        () => const EmailFormScreen(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.09),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
