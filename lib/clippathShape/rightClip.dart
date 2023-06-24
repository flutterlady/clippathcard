import 'package:flutter/material.dart';

class RighBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 10); //12 Start at the top-left corner
    path.lineTo(size.width, size.height); // Line to the bottom-right corner
    path.lineTo(size.width, 0); // Line to the top-right corner
    // path.close(); // Close the path
    path.lineTo(size.width, 0); // Line to the top-right corner

    return path;
  }

  @override
  bool shouldReclip(RighBottomClipper oldClipper) => false;
}
