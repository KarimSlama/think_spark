import 'package:flutter/material.dart';

class SparkCustomCurvedEdges extends CustomClipper<Path> {
  final double heightFactor;

  const SparkCustomCurvedEdges({this.heightFactor = .97});
  @override
  Path getClip(Size size) {
    final path = Path();
    final adjustedHeight = size.height * heightFactor;
    path.moveTo(0, 10);
    path.quadraticBezierTo(0, 0, 10, 0);

    path.lineTo(size.width - 10, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 30);

    path.lineTo(size.width, adjustedHeight - 50);

    path.quadraticBezierTo(
      size.width,
      adjustedHeight - 10,
      size.width - 50,
      adjustedHeight - 10,
    );

    path.lineTo(80, adjustedHeight - 20);

    path.quadraticBezierTo(
      0,
      adjustedHeight - 30,
      0,
      adjustedHeight - 80,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
