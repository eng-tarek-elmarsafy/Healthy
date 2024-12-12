import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String question;
  const QuestionText({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(right: 30),
      child: Text(
        question,
        textAlign: TextAlign.left,
        style: const TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 30,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1),
      ),
    );
  }
}
