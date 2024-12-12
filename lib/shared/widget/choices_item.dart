import 'package:flutter/material.dart';
import '../models/question_and_answer_model.dart';
import 'button_wth_Icon.dart';
import 'question_text.dart';

class ChoicesItem extends StatefulWidget {
  final QuestionAndAnswerModel model;

  const ChoicesItem({super.key, required this.model});

  @override
  State<ChoicesItem> createState() => _ChoicesItemState();
}

class _ChoicesItemState extends State<ChoicesItem> {
  int? selected;
  bool? selecte;
  Result result = Result();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionText(
            question: widget.model.question,
          ),
          const SizedBox(height: 24),
          ButtonWthIcon(
            onPressed: () {
              selected = 1;
              selecte = true;

              setState(() {
                result.add3Points();
              });
            },
            isSelected: selected == 1,
            text: widget.model.answer1,
          ),
          ButtonWthIcon(
            onPressed: () {
              selected = 2;
              setState(() {
                result.add2Points();
              });
            },
            isSelected: selected == 2,
            text: widget.model.answer2,
          ),
          ButtonWthIcon(
            onPressed: () {
              selected = 3;
              setState(() {
                result.add1Points();
              });
            },
            isSelected: selected == 3,
            text: widget.model.answer3,
          ),
          ButtonWthIcon(
            onPressed: () {
              selected = 4;
              setState(() {});
            },
            isSelected: selected == 4,
            text: widget.model.answer4,
          ),
        ],
      ),
    );
  }
}

class Result {
  static int _conter = 0;

  int get conter => _conter;

  void add3Points() {
    _conter += 3;
  }

  void add2Points() {
    _conter += 2;
  }

  void add1Points() {
    _conter += 1;
  }
}
