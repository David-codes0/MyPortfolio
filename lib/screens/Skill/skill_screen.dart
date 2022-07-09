import 'package:flutter/material.dart';
import 'package:myportfolio/animationWidgets/lottieAnimation/skill_page_lottie.dart';
import 'package:myportfolio/constants.dart';

class SkillMeasurement extends StatelessWidget {
  const SkillMeasurement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 600,
      child: Stack(
        children: [
          const Positioned(
            left: 23,
            bottom: 50,
            child: LottieAni2(),
          ),
          Positioned(
            right: 100,
            top: 0,
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
                  Row(
                    children: const [
                      SkillCircularData(),
                      Spacer(),
                      SkillCircularData(),
                      Spacer(),
                      SkillCircularData(),
                    ],
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
  const SkillCircularData({
    Key? key,
  }) : super(key: key);

  @override
  State<SkillCircularData> createState() => _SkillCircularDataState();
}

class _SkillCircularDataState extends State<SkillCircularData> {
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
      child: AspectRatio(
        aspectRatio: 1.2,
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 1),
          duration: const Duration(milliseconds: 3000),
          builder: (context, double value, child) => Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                value: value,
                color: Colors.black,
                backgroundColor: primaryColor,
                strokeWidth: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
