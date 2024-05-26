import 'package:flutter/material.dart';
import 'screens/quiz_screen.dart';


class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizScreen(),
    );
  }
}