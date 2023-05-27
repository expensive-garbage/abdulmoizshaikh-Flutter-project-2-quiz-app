import 'package:flutter/material.dart';

class StartScreenWidget extends StatelessWidget {
  const StartScreenWidget(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 80, 11, 93),
        textStyle: const TextStyle(
          fontSize: 20,
        ));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
          ),
          // Opacity( //not recommended using this extra widget for opacity for performance optimization
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            style: style,
            onPressed: startQuiz,
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
