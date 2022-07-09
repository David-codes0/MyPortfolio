import 'package:flutter/material.dart';
import 'package:myportfolio/animationWidgets/big_monitor_ani.dart';
import 'package:myportfolio/animationWidgets/bottom_scr_ani.dart';
import 'package:myportfolio/animationWidgets/center_scr_text_ani.dart';
import 'package:myportfolio/animationWidgets/my_image_animation.dart';
import 'package:myportfolio/components/Menubar/app_bar.dart';
import 'package:myportfolio/components/bodyTextWidgets/Intro_text.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/screens/Skill/skill_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height,
              width: size.width,
              padding: const EdgeInsets.all(30),
              child: Stack(
                children: [
                  const MyImageAnimation(),
                  Positioned(
                    bottom: 210,
                    right: 40,
                    child: Image.asset(
                      'images/MainPage5.png',
                      scale: 1.27,
                    ),
                  ),
                  Column(
                    children: const [
                      CustomAppBar(),
                      Spacer(),
                      SalutationMessage(),
                      // IntroDescrpTxt(),
                      Spacer(flex: 2),
                    ],
                  ),
                  const BigMonitor(),
                  const CenterScreenAnimation(),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 130,
                      width: 1300,
                      color: primaryColor,
                    ),
                  ),
                  const BottomScrIconAnimation(),
                ],
              ),
            ),
            const SkillMeasurement()
          ],
        ),
      ),
    );
  }
}
