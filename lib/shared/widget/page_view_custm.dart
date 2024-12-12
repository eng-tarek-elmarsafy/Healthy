import 'package:flutter/material.dart';

import '../models/question_and_answer_model.dart';
import 'choices_item.dart';

class PageViewCustm extends StatelessWidget {
  const PageViewCustm({
    super.key,
    required this.controller,
    required this.itemData,
  });

  final PageController controller;
  final List<QuestionAndAnswerModel> itemData;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemData.length,
      itemBuilder: (BuildContext context, int index) => ChoicesItem(
        model: itemData[index],
      ),
    );
  }
}
