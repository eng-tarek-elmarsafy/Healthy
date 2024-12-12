import 'package:flutter/material.dart';

import '../../view/question_view.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  const QuestionView(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        minimumSize: const Size(
          double.infinity,
          50,
        ),
      ),
      child: const Text(
        'Start Quiz',
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Color.fromRGBO(43, 0, 98, 1),
            fontSize: 18,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1),
      ),
    );
  }
}
