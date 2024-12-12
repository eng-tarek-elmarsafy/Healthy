import 'package:flutter/material.dart';

import '../shared/widget/background_scaffold.dart';
import '../shared/widget/start_button.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundOfScaffold(
        image: 'assets/image/image Background Removed.png',
        widget: [
          SizedBox(
            height: 130,
            width: double.infinity,
          ),
          Text(
            'Good morning,',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 25,
              height: 1,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'New topic is waiting',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontFamily: 'Gilroy',
              fontSize: 35,
              height: 1,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          StartButton(),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
