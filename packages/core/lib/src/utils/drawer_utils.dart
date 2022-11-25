import 'package:flutter/material.dart';

/// Utility class for the drawer of the app
class DrawerUtils {
  /// Width of the drawer
  static const double widthFraction = 0.75;

  /// Dynamic width of drawer based on screen width
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width * widthFraction;
  }

  /// Animation duration of the drawer opening and closing
  static const Duration animationDuration = Duration(milliseconds: 200);

  /// Animation curve of the drawer opening and closing
  static const Curve animationCurve = Curves.easeInOut;
}
