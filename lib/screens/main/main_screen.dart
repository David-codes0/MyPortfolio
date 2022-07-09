import 'package:flutter/material.dart';
import 'package:myportfolio/animationWidgets/big_monitor_ani.dart';
import 'package:myportfolio/animationWidgets/bottom_scr_ani.dart';
import 'package:myportfolio/animationWidgets/center_scr_text_ani.dart';
import 'package:myportfolio/components/Menubar/app_bar.dart';
import 'package:myportfolio/components/bodyTextWidgets/Intro_text.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/my_port_ficon_icons.dart';

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
                    crossAxisAlignment: CrossAxisAlignment.start,
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

class MyImageAnimation extends StatefulWidget {
  const MyImageAnimation({
    Key? key,
  }) : super(key: key);

  @override
  State<MyImageAnimation> createState() => _MyImageAnimationState();
}

class _MyImageAnimationState extends State<MyImageAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController settingIconController;
  @override
  // ignore: must_call_super
  void initState() {
    settingIconController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 160,
      right: 35,
      child: RotationTransition(
        turns: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(parent: settingIconController, curve: Curves.linear),
        ),
        child: const Icon(
          MyPortFicon.imageicon,
          color: Colors.white,
          size: 300,
        ),
      ),
    );
  }
}

class SkillMeasurement extends StatelessWidget {
  const SkillMeasurement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 600,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          clipBehavior: Clip.none,
          children: const [
            Text(
              'data',
              style: TextStyle(
                fontSize: 45,
                color: primaryColor,
                fontFamily: 'Source sans',
              ),
            ),
            Positioned(
              bottom: 45,
              child: Text(
                'data',
                style: TextStyle(
                  fontSize: 45,
                  color: primaryColor,
                  fontFamily: 'Source sans',
                ),
              ),
            ),
          ],
        ));
  }
}
