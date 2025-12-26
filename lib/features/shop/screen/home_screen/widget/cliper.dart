
import 'package:flutter/material.dart';
class UCustomCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // top to bottom line
    path.lineTo(0, size.height - 40);

    final firstControlPoint = Offset(40, size.height);
    final firstEndPoint = Offset(size.width / 2, size.height);

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    final firstControlPoint2 = Offset(size.width - 40, size.height);
    final firstEndPoint2 = Offset(size.width, size.height - 40);

    path.quadraticBezierTo(
      firstControlPoint2.dx,
      firstControlPoint2.dy,
      firstEndPoint2.dx,
      firstEndPoint2.dy,
    );

    // bottom right to top right line
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
