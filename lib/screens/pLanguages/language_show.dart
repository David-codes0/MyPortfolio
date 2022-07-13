import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';

class StackGrade extends StatelessWidget {
  const StackGrade({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      color: Colors.black,
      child: Stack(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              height: 550,
              width: 1000,
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
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'My Language Stacks',
                        style: TextStyle(
                          fontSize: 55,
                          color: Colors.black,
                          fontFamily: 'Source sans',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        StackLinearData(label: 'Dart', percentage: 0.8),
                        SizedBox(
                          height: 10,
                        ),
                        StackLinearData(label: 'JavaScript', percentage: 0.9),
                        SizedBox(
                          height: 10,
                        ),
                        StackLinearData(label: 'HTML', percentage: 1),
                        SizedBox(
                          height: 10,
                        ),
                        StackLinearData(label: 'CSS', percentage: 0.95),
                        SizedBox(
                          height: 10,
                        ),
                        StackLinearData(label: 'C', percentage: 0.85),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StackLinearData extends StatefulWidget {
  final String label;
  final double percentage;

  const StackLinearData({
    Key? key,
    required this.label,
    required this.percentage,
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<StackLinearData> createState() =>
      // ignore: no_logic_in_create_state
      _StackLinearDataState(label, percentage);
}

class _StackLinearDataState extends State<StackLinearData> {
  final String label;
  final double percentage;

  _StackLinearDataState(this.label, this.percentage);
  @override
  Widget build(BuildContext context) {
    // bool isDesktop = MediaQuery.of(context).size.width >= 700;
    // bool isMobile = MediaQuery.of(context).size.width < 700;
    return LinearProgressBox(
      text: label,
      percentage: percentage,
    );
  }
}

class LinearProgressBox extends StatelessWidget {
  final String text;
  final double percentage;
  const LinearProgressBox({
    Key? key,
    required this.text,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 500,
      padding: const EdgeInsets.all(8.0),
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
      child: StackProgressIndicator(
        label: text,
        percentage: percentage,
      ),
    );
  }
}

class StackProgressIndicator extends StatelessWidget {
  final String label;
  final double percentage;
  const StackProgressIndicator({
    Key? key,
    required this.label,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: percentage),
      duration: const Duration(milliseconds: 3000),
      builder: (context, double value, child) => Column(
        children: [
          Row(
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'Source san',
                  fontSize: 20,
                ),
              ),
              const Spacer(),
              Text(
                '${(value * 100).toInt()}%',
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
          LinearProgressIndicator(
            value: value,
            color: Colors.black,
            backgroundColor: Colors.limeAccent,
          ),
        ],
      ),
    );
  }
}
