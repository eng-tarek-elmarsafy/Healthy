import 'package:flutter/material.dart';

class ButtonNext extends StatelessWidget {
  final VoidCallback next;
  const ButtonNext({
    super.key,
    required this.next,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff8E84FF),
            // shadowColor: Color(0xff8E84FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            foregroundColor: Colors.white,
            side: const BorderSide(
              color: Color(0xff8E84FF),
            ),
          ),
          onPressed: next,
          icon: const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 10),
            child: Text(
              'Next',
              style: TextStyle(
                  // color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Gilroy',
                  fontSize: 25,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          label: const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Icon(
              Icons.navigate_next_outlined,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}

class ButtonBack extends StatelessWidget {
  final VoidCallback back;
  const ButtonBack({
    super.key,
    required this.back,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            // shadowColor: Color(0xff8E84FF),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            foregroundColor: Colors.white,
            side: const BorderSide(
              color: Color(0xff8E84FF),
            ),
          ),
          onPressed: back,
          label: const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15, right: 10),
            child: Text(
              'Back',
              style: TextStyle(
                  // color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Gilroy',
                  fontSize: 25,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          icon: const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
            child: Icon(
              Icons.navigate_before,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
