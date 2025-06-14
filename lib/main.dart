import 'package:flutter/material.dart';

import 'package:quiz_app/styled_text.dart';

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/quiz-logo.png', width: 350),
              const SizedBox(height: 100),
              const StyledText('Learn Flutter the fun way!', 25),
              const SizedBox(height: 40),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                  ),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 71, 38, 129),
                  ),
                ),
                child: const StyledText('Start Quiz', 15),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
