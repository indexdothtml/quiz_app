import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/components/question_number.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summary, {super.key});

  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summary.map((item) {
            final questionNumber = ((item['question_index'] as int) + 1)
                .toString();
            final isCorrectAnswer =
                item['user_answer'] == item['correct_answer'];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 9),
              child: Row(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionNumber(
                    questionNumber: questionNumber,
                    isCorrectAnswer: isCorrectAnswer,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['question'].toString(),
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          item['user_answer'].toString(),
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 240, 157, 255),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          item['correct_answer'].toString(),
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 165, 240, 190),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
