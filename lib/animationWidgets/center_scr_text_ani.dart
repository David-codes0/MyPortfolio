import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

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
