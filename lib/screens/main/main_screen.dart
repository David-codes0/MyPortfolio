import 'package:flutter/material.dart';
import 'package:myportfolio/animationWidgets/big_monitor_ani.dart';
import 'package:myportfolio/animationWidgets/bottom_scr_ani.dart';
import 'package:myportfolio/animationWidgets/center_scr_text_ani.dart';
import 'package:myportfolio/animationWidgets/my_image_animation.dart';
import 'package:myportfolio/components/Menubar/app_bar.dart';
import 'package:myportfolio/components/Menubar/drawer_menu_bar.dart';
import 'package:myportfolio/components/bodyTextWidgets/Intro_text.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/models/projects.dart';
import 'package:myportfolio/screens/Projects/my_project_page.dart';
import 'package:myportfolio/screens/Skill/skill_screen.dart';
import 'package:myportfolio/screens/pLanguages/language_show.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
// bool isDesktop  (BuildContext context) => MediaQuery.of(context).size.width >= 600;
// bool isMobile (BuildContext context) =>
//         MediaQuery.of(context).size.width < 600 ?  true : false;
    bool isDesktop = MediaQuery.of(context).size.width >= 700;
    bool isMobile = MediaQuery.of(context).size.width < 700;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 100,
        actions: [
          SizedBox(child: isDesktop ? const CustomAppBar() : null),
        ],
      ),
      drawer: isMobile
          ? Drawer(
              backgroundColor: Colors.black,
              child: Container(
                margin: const EdgeInsets.all(30),
                child: const DrawerMenuBar(),
              ))
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text('$size'),
            Container(
              height: size.height,
              width: size.width,
              padding: const EdgeInsets.all(30),
              child: Stack(
                children: [
                  if (isMobile)
                    const MyImageAnimationMob()
                  else
                    const MyImageAnimation(),
                  if (isMobile)
                    Positioned(
                      top: 70,
                      right: 40,
                      child: Image.asset(
                        'images/MainPage5.png',
                        scale: 2,
                      ),
                    )
                  else
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
                      Spacer(),
                      SalutationMessage(),
                      // IntroDescrpTxt(),
                      Spacer(flex: 2),
                    ],
                  ),
                  if (isMobile)
                    const SizedBox(width: 0)
                  else
                    const BigMonitor(),
                  if (isMobile)
                    const CenterScreenAnimationMob()
                  else
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
            const SkillMeasurement(),
            const StackGrade(),
            const MyProjectPage(),
          ],
        ),
      ),
    );
  }
}


