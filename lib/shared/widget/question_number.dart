import 'package:flutter/material.dart';

import 'pianter.dart';

class QuestionNumber extends StatelessWidget {
  final int numberText;
  final int number;
  final int isSlelected;
  const QuestionNumber(
      {super.key,
      required this.number,
      required this.numberText,
      required this.isSlelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 208.9,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 139, 135, 247),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            PianterRound(
              number: number,
              isSlelected: isSlelected,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              'Question $numberText',
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PianterRound extends StatelessWidget {
  final int number;
  final int isSlelected;
  const PianterRound(
      {super.key, required this.number, required this.isSlelected});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(25, 30), // حجم الويدجت
      painter: CircularArcPainter(number: number, isSlelected: isSlelected),
    );
  }
}
