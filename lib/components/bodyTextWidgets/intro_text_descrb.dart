
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class IntroDescrpTxt extends StatefulWidget {
  const IntroDescrpTxt({
    Key? key,
  }) : super(key: key);

  @override
  State<IntroDescrpTxt> createState() => _IntroDescrpTxtState();
}

class _IntroDescrpTxtState extends State<IntroDescrpTxt> {
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          'I am a Flutter Developer',
          textStyle: const TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          speed: const Duration(milliseconds: 200),
          cursor: ' |',
        ),
      ],
      repeatForever: true,
      pause: const Duration(milliseconds: 1000),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }
}
