import 'dart:math';

import 'package:flutter/material.dart';

class CircularArcPainter extends CustomPainter {
  final int number;
  final int isSlelected;
  const CircularArcPainter({required this.isSlelected, required this.number});
  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2; // نصف القطر
    final Offset center =
        Offset(size.width / 2, size.height / 2); // مركز الدائرة
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3; // عرض القوس

    // قائمة الزوايا والألوان
    final List<Color> colors = [
      const Color.fromARGB(255, 8, 14, 47),
      const Color.fromARGB(255, 108, 96, 201),
    ];

    double arcGap = pi / number; // المسافة بين الأقواس
    double sweepAngle = pi / number; // زاوية القوس الواحد

    // رسم الأقواس
    for (int i = 0; i < number; i++) {
      paint.color = isSlelected > i ? colors[0] : colors[1];

      final double startAngle =
          (i * (arcGap + sweepAngle)) - pi / 2; // زاوية البداية
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
