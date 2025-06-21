import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber({
    super.key,
    required this.questionNumber,
    required this.isCorrectAnswer,
  });

  final String questionNumber;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumberColor = isCorrectAnswer
        ? const Color.fromARGB(255, 202, 255, 204)
        : const Color.fromARGB(255, 245, 199, 253);

    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: questionNumberColor,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        questionNumber,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}
