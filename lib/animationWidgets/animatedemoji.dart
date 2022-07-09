import 'package:flutter/material.dart';

class AnimatedEmoji extends StatelessWidget {
  const AnimatedEmoji({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 200),
      // transform: Matrix4.rotationX(1.5),
      child: const Text(
        '👋',
        style: TextStyle(
          fontSize: 45,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'Source sans',
        ),
      ),
    );
  }
}
