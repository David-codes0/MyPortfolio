import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myportfolio/animationWidgets/lottieAnimation/skill_page_lottie.dart';
import 'package:myportfolio/constants.dart';

class SkillMeasurement extends StatelessWidget {
  const SkillMeasurement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width >= 700;
    bool isMobile = MediaQuery.of(context).size.width < 700;
    // ignore: sized_box_for_whitespace
    return Container(
      height: 700,
      color: Colors.black12,
      child: Stack(
        children: [
          Positioned(
            left: 23,
            bottom: 50,
            child: isMobile ? const SizedBox() : const LottieAni2(),
          ),
          Positioned(
            right: 100,
            top: 50,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              height: 550,
              width: 700,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, -2),
                    blurRadius: 30,
                    color: primaryColor.withOpacity(0.5),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Skills',
                        style: TextStyle(
                          fontSize: 55,
                          color: Colors.black,
                          fontFamily: 'Source sans',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    child: Row(
                      children: const [
                        SkillCircularData(
                          label: 'Flutter',
                          percentage: 0.70,
                        ),
                        Spacer(),
                        SkillCircularData(
                          label: 'Nodejs',
                          percentage: 0.50,
                        ),
                        Spacer(),
                        SkillCircularData(
                          label: 'Firebase',
                          percentage: 0.80,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SkillCircularData extends StatefulWidget {
  final String label;
  final double percentage;

  const SkillCircularData({
    Key? key,
    required this.label,
    required this.percentage,
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<SkillCircularData> createState() =>
      _SkillCircularDataState(label, percentage);
}

class _SkillCircularDataState extends State<SkillCircularData> {
  final String label;
  final double percentage;

  _SkillCircularDataState(this.label, this.percentage);
  @override
  Widget build(BuildContext context) {
    // bool isDesktop = MediaQuery.of(context).size.width >= 700;
    // bool isMobile = MediaQuery.of(context).size.width < 700;
    return CircularProgressBox(
      text: label,
      percentage: percentage,
    );
  }
}

class CircularProgressBox extends StatelessWidget {
  final String text;
  final double percentage;
  const CircularProgressBox({
    Key? key,
    required this.text,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      padding: const EdgeInsets.all(35.0),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.5),
          )
        ],
      ),
      child: SkillsProgressIndicator(
        label: text,
        percentage: percentage,
      ),
    );
  }
}

class SkillsProgressIndicator extends StatelessWidget {
  final String label;
  final double percentage;
  const SkillsProgressIndicator({
    Key? key,
    required this.label,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: const Duration(milliseconds: 3000),
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                AspectRatio(
                  aspectRatio: 1.2,
                  child: CircularProgressIndicator(
                    value: value,
                    color: Colors.black,
                    backgroundColor: Colors.lightGreen.shade700,
                    strokeWidth: 8,
                  ),
                ),
                Center(
                  child: Text(
                    '${(value * 100).toInt()}%',
                    style: const TextStyle(color: darkColor),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Source san',
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
