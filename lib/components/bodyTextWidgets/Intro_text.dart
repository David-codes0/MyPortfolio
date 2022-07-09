
import 'package:flutter/material.dart';
import 'package:myportfolio/animationWidgets/animatedemoji.dart';
import 'package:myportfolio/components/bodyTextWidgets/intro_text_descrb.dart';




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

