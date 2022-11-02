import 'package:flutter/material.dart';

/// Styles class holding app text styles
class AppTextStyles {
  /// Font family string
  static const String fontFamily = 'Roboto';

  /// Font size for body text styles
  static const double bodyFontSize = 16;

  /// Font size for small body text styles
  static const double bodySmFontSize = 14;

  /// Font size for large body text styles
  static const double bodyLgFontSize = 18;

  /// Text style for body text
  static const TextStyle body = TextStyle(
    fontSize: bodyFontSize,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  /// Text style for Body Bold text
  static const TextStyle bodyBold = TextStyle(
    fontSize: bodyFontSize,
    fontWeight: FontWeight.w700,
    height: 1,
  );

  /// Text style for body SM text
  static const TextStyle bodySm = TextStyle(
    fontSize: bodySmFontSize,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  /// Text style for body Small Bold text
  static const TextStyle bodySmBold = TextStyle(
    fontSize: bodySmFontSize,
    fontWeight: FontWeight.w700,
    height: 1,
  );

  /// Text style for Body Lg text
  static const TextStyle bodyLg = TextStyle(
    fontSize: bodyLgFontSize,
    fontWeight: FontWeight.w900,
    height: 1,
  );

  /// Text style for Body Lg Bold text
  static const TextStyle bodyLgBold = TextStyle(
    fontSize: bodyLgFontSize,
    fontWeight: FontWeight.w700,
    height: 1,
  );

  /// Text style for Body Lg Black text
  static const TextStyle bodyLgBlack = TextStyle(
    fontSize: bodyLgFontSize,
    fontWeight: FontWeight.w900,
    height: 1,
  );

  /// Text style for Headline 1 text
  static const TextStyle h1 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w900,
    height: 1,
  );

  /// Text style for Headline 2 text
  static const TextStyle h2 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w900,
    height: 1,
  );

  /// Text style for Headline 3 text
  static const TextStyle h3 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    height: 1,
  );

  /// Text style for Headline 4 text
  static const TextStyle h4 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1,
  );

  /// Text style for Headline 5 text
  static const TextStyle h5 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  /// Text style for Button text
  static const TextStyle button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.05,
  );

  /// Text style for Caption text
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1,
  );
}
