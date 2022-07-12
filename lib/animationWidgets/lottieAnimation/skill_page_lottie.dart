import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAni2 extends StatefulWidget {
  const LottieAni2({Key? key}) : super(key: key);

  @override
  State<LottieAni2> createState() => _LottieAni2State();
}

class _LottieAni2State extends State<LottieAni2> {
  late Widget lottie;
  @override
  void initState() {
    lottie = Lottie.asset(
      "images/SkillPage.json",
      height: 400,
      width: 400,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: lottie,
    );
  }
}
