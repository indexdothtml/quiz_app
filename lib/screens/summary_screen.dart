import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/components/questions_summary.dart';
import 'package:quiz_app/data/questions.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen(this.selectedAnswers, this.onRestartQuiz, {super.key});

  final List<String> selectedAnswers;
  final void Function() onRestartQuiz;

  List<Map<String, Object>> generateSummary() {
    List<Map<String, Object>> summary = [];

    for (int i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'user_answer': selectedAnswers[i],
        'correct_answer': questions[i].options[0],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final totalNumberOfQuestions = questions.length;
    final summaryData = generateSummary();
    final int numberOfCorrectAnswers = summaryData.where((element) {
      return element['user_answer'] == element['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have answered $numberOfCorrectAnswers out of $totalNumberOfQuestions questions correctly!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            QuestionsSummary(summaryData),
            const SizedBox(height: 20),
            TextButton.icon(
              onPressed: onRestartQuiz,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                iconSize: 25,
                textStyle: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              label: const Text('Restart Quiz'),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
