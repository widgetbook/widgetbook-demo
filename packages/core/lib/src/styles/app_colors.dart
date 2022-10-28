import 'package:flutter/material.dart';

/// Styles class holding app color information
/// and helper methods
class AppColors {
  /// App primary color
  static const Color primary = Color(0xff1DA1F2);

  /// App secondary color
  static const Color secondary = Color(0xff141619);

  /// App black color
  static const Color black = Color(0xff141619);

  /// App text color
  static const Color text = Color(0xff141619);

  /// App text light color
  static const Color textLight = Color(0xff687684);

  /// App border color
  static const Color border = Color(0xffD1D9DD);

  /// App white color
  static const Color white = Color(0xffffffff);

  /// App white color with 50% opacity
  static const Color whiteLight = Color(0x88ffffff);

  /// App bg color
  static const Color bg = Color(0xffEFF3F4);

  /// App success color
  static const Color success = Color(0xff59BC6C);

  /// App pink color
  static const Color pink = Color(0xffCE395F);

  /// App pink light color
  static const Color pinkLight = Color(0xffe699ae);

  /// Returns a shade of a [Color] from a double value
  ///
  /// The 'darker' boolean determines whether the shade
  /// should be .1 darker or lighter than the provided color
  static Color getShade(Color color, {bool darker = false, double value = .1}) {
    assert(value >= 0 && value <= 1, 'shade values must be between 0 and 1');

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness(
      (darker ? (hsl.lightness - value) : (hsl.lightness + value))
          .clamp(0.0, 1.0),
    );

    return hslDark.toColor();
  }

  /// Returns a [MaterialColor] from a [Color] object
  static MaterialColor getMaterialColorFromColor(Color color) {
    final colorShades = <int, Color>{
      50: getShade(color, value: 0.5),
      100: getShade(color, value: 0.4),
      200: getShade(color, value: 0.3),
      300: getShade(color, value: 0.2),
      400: getShade(color),
      500: color, //Primary value
      600: getShade(color, darker: true),
      700: getShade(color, value: 0.15, darker: true),
      800: getShade(color, value: 0.2, darker: true),
      900: getShade(color, value: 0.25, darker: true),
    };
    return MaterialColor(color.value, colorShades);
  }
}
