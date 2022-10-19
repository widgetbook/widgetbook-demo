import 'package:core/src/styles/app_colors.dart';
import 'package:flutter/material.dart';

/// Helper class for app wide themes
class AppThemes {
  /// Returns theme data
  static ThemeData getTheme({bool isDark = false}) {
   return ThemeData(
     brightness: isDark ? Brightness.light : Brightness.dark,
     primaryColor: AppColors.getMaterialColorFromColor(AppColors.primary),
   );
  }
}