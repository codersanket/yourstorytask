import 'package:flutter/material.dart';

class DrawLine extends CustomPainter {
  DrawLine({required this.containerSize, required this.tapOffset});
  late Size containerSize;
  late Offset tapOffset;
  @override
  void paint(Canvas canvas, Size size) {
    print(tapOffset);

    Offset startingPoint = Offset(0, 0);
    Offset endingPoint = Offset(containerSize.width, containerSize.height);
    if (tapOffset != Offset(0, 0)) {
      canvas.drawLine(
          startingPoint,
          tapOffset,
          Paint()
            ..color = Colors.red
            ..strokeWidth = 5);
      canvas.drawLine(
          tapOffset,
          endingPoint,
          Paint()
            ..color = Colors.yellow
            ..strokeWidth = 5);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}