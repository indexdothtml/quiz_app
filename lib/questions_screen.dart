import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/option_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onOptionSelect});

  final void Function(String option) onOptionSelect;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int activeQuestionIndex = 0;

  void handleOption(String option) {
    widget.onOptionSelect(option);
    setState(() {
      activeQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final activeQuestion = questions[activeQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              activeQuestion.question,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...activeQuestion.getShuffledList().map((option) {
              return OptionButton(
                option: option,
                onTap: () {
                  handleOption(option);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
