import 'package:flutter/material.dart';
import 'package:quiz_app/shared/widget/background_scaffold.dart';
import 'package:quiz_app/shared/widget/choices_item.dart';

class ResultView extends StatelessWidget {
  ResultView({super.key});
  Result result = Result();
  FinalResult finalResult = FinalResult();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundOfScaffold(
        image: 'assets/image/image Background Removed.png',
        widget: [
          const SizedBox(
            width: double.infinity,
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  finalResult.resultFinal(),
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/image Background Removed.png'),
              ),
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(500),
                topLeft: Radius.circular(5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: double.infinity,
                ),
                SizedBox(
                  width: 230,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 80,
                      left: 20,
                    ),
                    child: Text(
                      textAlign: TextAlign.start,
                      finalResult.Advice(),
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FinalResult {
  Result result = Result();

  String resultFinal() {
    if (result.conter >= 25) {
      return 'Excellent health 😘';
    } else if (result.conter >= 18) {
      return 'Good health 😉';
    } else if (result.conter >= 10) {
      return 'Needs improvement 😳';
    }
    return 'Unhealthy 😡';
  }

  String Advice() {
    if (result.conter >= 25) {
      return 'You lead a very healthy lifestyle, and keep it up!';
    } else if (result.conter >= 18) {
      return 'You are in good health, but some aspects can be improved.';
    } else if (result.conter >= 10) {
      return 'You need to improve your daily habits to achieve better health.';
    }
    return 'Your current lifestyle needs to change radically to maintain your health.';
  }
}
