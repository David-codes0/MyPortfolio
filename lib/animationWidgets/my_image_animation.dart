import 'package:flutter/material.dart';
import 'package:myportfolio/my_port_ficon_icons.dart';

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

class MyImageAnimationMob extends StatefulWidget {
  const MyImageAnimationMob({
    Key? key,
  }) : super(key: key);

  @override
  State<MyImageAnimationMob> createState() => _MyImageAnimationMobState();
}

class _MyImageAnimationMobState extends State<MyImageAnimationMob>
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
      top: 50,
      right: 35,
      child: RotationTransition(
        turns: Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(parent: settingIconController, curve: Curves.linear),
        ),
        child: Icon(
          MyPortFicon.imageicon,
          color: Colors.white.withOpacity(0.5),
          size: 200,
        ),
      ),
    );
  }
}
