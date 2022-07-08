import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/Intro_text.dart';
import 'package:myportfolio/components/app_bar.dart';

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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/MainPage1.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
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
                  const BottomScrIconAnimation()
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


////////
class BottomScrIconAnimation extends StatefulWidget {
  const BottomScrIconAnimation({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomScrIconAnimation> createState() => _BottomScrIconAnimationState();
}

class _BottomScrIconAnimationState extends State<BottomScrIconAnimation>  with SingleTickerProviderStateMixin{
  late AnimationController settingIconController;
@override
  void initState() {
settingIconController = AnimationController(
  vsync: this,
  duration: const Duration(seconds: 3),
);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned(
          left: 20,
          bottom: 10,
          child: Icon(
            Icons.settings,
            color: Colors.white,
            size: 50,
          ),
        )
      ],
    );
  }
}

/////
class SkillMeasurement extends StatelessWidget {
  const SkillMeasurement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
    );
  }
}


////
class BigMonitor extends StatelessWidget {
  const BigMonitor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 450,
      bottom: 100,
      child: Icon(
        Icons.desktop_windows,
        color: Colors.white.withOpacity(0.1),
        size: 400,
      ),
    );
  }
}

//////
class CenterScreenAnimation extends StatelessWidget {
  const CenterScreenAnimation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 500,
      bottom: 300,
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            ' <_> < / > ',
            textStyle:
                TextStyle(color: Colors.white.withOpacity(0.1), fontSize: 70),
          ),
          TypewriterAnimatedText(
            '  { ?? _ } ',
            textStyle:
                TextStyle(color: Colors.white.withOpacity(0.1), fontSize: 70),
          ),
          TypewriterAnimatedText(
            ' ( ) => { } ',
            textStyle:
                TextStyle(color: Colors.white.withOpacity(0.1), fontSize: 70),
          ),
          TypewriterAnimatedText(
            '  Build ',
            textStyle:
                TextStyle(color: Colors.white.withOpacity(0.1), fontSize: 70),
          ),
          TypewriterAnimatedText(
            ' Clean Code',
            textStyle:
                TextStyle(color: Colors.white.withOpacity(0.1), fontSize: 50),
          ),
        ],
        repeatForever: true,
        pause: const Duration(milliseconds: 1000),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      ),
    );
  }
}
