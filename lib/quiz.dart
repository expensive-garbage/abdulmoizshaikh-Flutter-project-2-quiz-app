import 'package:flutter/material.dart';
import 'package:flutter_project2_quiz_app/questions_screen.dart';
import 'package:flutter_project2_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreenWidget;

  @override
  void initState() {
    activeScreenWidget = StartScreenWidget(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreenWidget = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xff1f005c),
                Color(0xff5b0060),
              ],
            ),
          ),
          child: activeScreenWidget,
        ),
      ),
    );
  }
}


//  home: Scaffold(body: GradientContainer()),
