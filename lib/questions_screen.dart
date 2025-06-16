import 'package:flutter/material.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/option_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  void changeQuestion() {
    // .. change quesiton logic
  }

  @override
  Widget build(BuildContext context) {
    final activeQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            activeQuestion.question,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          OptionButton(
            option: activeQuestion.answers[0],
            onTap: changeQuestion,
          ),
          OptionButton(
            option: activeQuestion.answers[1],
            onTap: changeQuestion,
          ),
          OptionButton(
            option: activeQuestion.answers[2],
            onTap: changeQuestion,
          ),
          OptionButton(
            option: activeQuestion.answers[3],
            onTap: changeQuestion,
          ),
        ],
      ),
    );
  }
}
