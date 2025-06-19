import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({super.key, required this.option, required this.onTap});

  final String option;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 64, 1, 112),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      ),
      onPressed: onTap,
      child: Text(option, textAlign: TextAlign.center),
    );
  }
}
