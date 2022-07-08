import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SalutationMessage extends StatefulWidget {
  const SalutationMessage({Key? key}) : super(key: key);

  @override
  State<SalutationMessage> createState() => _SalutationMessageState();
}

class _SalutationMessageState extends State<SalutationMessage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                'Hey, ',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Source sans',
                ),
                textAlign: TextAlign.start,
              ),
              AnimatedEmoji()
            ],
          ),
          const Text(
            'I\'m David.',
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Source sans',
            ),
            textAlign: TextAlign.start,
          ),
          const IntroDescrpTxt(),
        ],
      ),
    );
  }
}

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
