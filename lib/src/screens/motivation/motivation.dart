import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'Citation.dart';

class Motivation extends StatelessWidget {
  Motivation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 30.0, fontFamily: 'Agne', color: Colors.black),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    Citation.getRandomElement(),
                    speed: const Duration(milliseconds: 300),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
