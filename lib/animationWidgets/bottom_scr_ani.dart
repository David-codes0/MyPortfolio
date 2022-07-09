import 'package:flutter/material.dart';
import 'package:myportfolio/my_port_ficon_icons.dart';

class BottomScrIconAnimation extends StatefulWidget {
  const BottomScrIconAnimation({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomScrIconAnimation> createState() => _BottomScrIconAnimationState();
}

class _BottomScrIconAnimationState extends State<BottomScrIconAnimation>
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
    return Stack(
      children: [
        Positioned(
          left: 50,
          bottom: 30,
          child: RotationTransition(
            turns: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                parent: settingIconController, curve: Curves.linear)),
            child: const Icon(
              MyPortFicon.api_icon,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
        Positioned(
          left: 80,
          bottom: 30,
          child: RotationTransition(
            turns: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                parent: settingIconController, curve: Curves.linear)),
            child: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ],
    );
  }
}
