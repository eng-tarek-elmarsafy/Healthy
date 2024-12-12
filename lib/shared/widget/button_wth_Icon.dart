// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ButtonWthIcon extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isSelected;
  const ButtonWthIcon({
    super.key,
    required this.onPressed,
    required this.isSelected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected
              ? const Color.fromARGB(255, 174, 167, 250)
              : const Color.fromRGBO(255, 255, 255, 1),
          minimumSize: const Size(double.infinity, 70),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: isSelected
                  ? const Icon(
                      Icons.check_circle,
                      size: 25,
                    )
                  : const Icon(
                      Icons.circle_outlined,
                      size: 25,
                    ),
            ),
            Text(
              text,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  color: Color.fromRGBO(43, 0, 98, 1),
                  fontFamily: 'Gilroy',
                  fontSize: 25,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ],
        ),
      ),
    );
  }
}
