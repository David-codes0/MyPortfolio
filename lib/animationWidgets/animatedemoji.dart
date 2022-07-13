import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedEmoji extends StatelessWidget {
  const AnimatedEmoji({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        ScaleAnimatedText(
          '👋',
          textStyle: const TextStyle(
            fontSize: 45,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Source sans',
          ),
        )
      ],
      repeatForever: true,
      pause: const Duration(milliseconds: 1000),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }
}
