import 'package:flutter/material.dart';
import 'package:quiz_app/shared/widget/background_scaffold.dart';
import 'package:quiz_app/view/result_view.dart';
import '../shared/models/question_and_answer_model.dart';
import '../shared/widget/button_next_back.dart';
import '../shared/widget/page_view_custm.dart';
import '../shared/widget/question_number.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});

  @override
  State<QuestionView> createState() => QuestionViewState();
}

class QuestionViewState extends State<QuestionView> {
  List<QuestionAndAnswerModel> itemData = [
    QuestionAndAnswerModel(
      question: 'How would you rate your overall physical health?',
      answer1: 'Excellent',
      answer2: 'Good',
      answer3: 'Fair',
      answer4: 'Poor',
    ),
    QuestionAndAnswerModel(
      question: 'How often do you exercise?',
      answer1: 'Daily',
      answer2: 'A few times a week',
      answer3: 'Occasionally',
      answer4: 'Rarely',
    ),
    QuestionAndAnswerModel(
      question: 'How would you rate your sleep quality?',
      answer1: 'Very good',
      answer2: 'Good',
      answer3: 'Average',
      answer4: 'Poor',
    ),
    QuestionAndAnswerModel(
      question: 'What is your stress level like?',
      answer1: 'Low',
      answer2: 'Moderate',
      answer3: 'High',
      answer4: 'Very high',
    ),
    QuestionAndAnswerModel(
      question: 'How would you describe your daily diet?',
      answer1: 'Very healthy',
      answer2: 'Healthy',
      answer3: 'Moderate',
      answer4: 'Unhealthy',
    ),
    QuestionAndAnswerModel(
      question: 'How often do you consume sugary drinks or snacks?',
      answer1: 'Rarely',
      answer2: 'Occasionally',
      answer3: 'Often',
      answer4: 'Daily',
    ),
    QuestionAndAnswerModel(
      question: 'How would you rate your mental well-being?',
      answer1: 'Very positive',
      answer2: 'Positive',
      answer3: 'Neutral',
      answer4: 'Negative',
    ),
    QuestionAndAnswerModel(
      question: 'Do you smoke or consume alcohol?',
      answer1: 'Never',
      answer2: 'Occasionally',
      answer3: 'Frequently',
      answer4: 'Always',
    ),
    QuestionAndAnswerModel(
      question: 'How often do you visit a healthcare professional?',
      answer1: 'Regularly',
      answer2: 'Occasionally',
      answer3: 'Rarely',
      answer4: 'Never',
    ),
    QuestionAndAnswerModel(
      question: 'Do you take any supplements or vitamins regularly?',
      answer1: 'Yes, daily',
      answer2: 'Yes, sometimes',
      answer3: 'Rarely',
      answer4: 'No',
    ),
  ];
  int celected = 1;

  int currentQuestionIndex = 1;
  PageController controller = PageController();

  void goToNextPage() {
    if (currentQuestionIndex < itemData.length) {
      controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        currentQuestionIndex++;
        celected = currentQuestionIndex;
      });
    }
  }

  void goToPreviousPage() {
    if (currentQuestionIndex > 1) {
      controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      setState(() {
        currentQuestionIndex--;
        celected = currentQuestionIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundOfScaffold(
        widget: [
          const SizedBox(height: 110),
          QuestionNumber(
            number: itemData.length,
            numberText: currentQuestionIndex,
            isSlelected: celected,
          ),
          const Expanded(child: SizedBox()),
          Expanded(
            flex: 8,
            child: PageViewCustm(controller: controller, itemData: itemData),
          ),
          Row(
            children: [
              ButtonBack(
                back: currentQuestionIndex > 1 ? goToPreviousPage : () {},
              ),
              const Spacer(),
              ButtonNext(
                next: currentQuestionIndex < itemData.length
                    ? goToNextPage
                    : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultView(),
                          ),
                        );
                      },
              ),
            ],
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
