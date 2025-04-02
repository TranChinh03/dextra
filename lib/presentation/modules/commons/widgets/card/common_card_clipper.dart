import 'package:flutter/material.dart';

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width, size.height);

    path.lineTo(size.width, size.height * 0.3);

    path.cubicTo(
      size.width * 0.85,
      size.height * 0.35,
      size.width * 0.9,
      size.height * 0.7,
      size.width * 0.85,
      size.height * 0.7,
    );

    path.cubicTo(
      size.width * 0.8,
      size.height * 0.7,
      size.width * 0.7,
      size.height * 0.6,
      size.width * 0.6,
      size.height,
    );

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
