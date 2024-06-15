import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text Widget'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Sandip Verma',
                    textStyle:
                        const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    speed: const Duration(milliseconds: 400))
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 200),
              // displayFullTextOnTap: true,
              // stopPauseOnTap: true,
            ),
            AnimatedTextKit(animatedTexts: [
              RotateAnimatedText('Prerna',
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.red),
              ),
              RotateAnimatedText('Patil',
                textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.orange),
              ),
              RotateAnimatedText('Cutie',
                textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.blue),
              )
            ]),
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText('Sandip Verma',textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.purple)),
              WavyAnimatedText('Prerna Patil',textStyle: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.deepPurple)),
            ])
          ],
        ),
      ),
    );
  }
}
