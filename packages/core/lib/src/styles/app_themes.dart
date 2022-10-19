import 'package:core/src/styles/app_colors.dart';
import 'package:core/src/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

/// Helper class for app wide themes
class AppThemes {
  /// Returns theme data
  static ThemeData getTheme({bool isDark = false}) {
   return ThemeData(
     brightness: isDark ? Brightness.light : Brightness.dark,
     fontFamily: AppTextStyles.fontFamily,
     primaryColor: AppColors.getMaterialColorFromColor(AppColors.primary),
     elevatedButtonTheme: ElevatedButtonThemeData(
       style: ElevatedButton.styleFrom(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(100),
         ),
         elevation: 0,
         textStyle: AppTextStyles.button,
       ),
     ),
     textTheme: const TextTheme(
       headline1: AppTextStyles.h1,
       headline2: AppTextStyles.h2,
       headline3: AppTextStyles.h3,
       headline4: AppTextStyles.h4,
       headline5: AppTextStyles.h5,
       caption: AppTextStyles.caption,
       bodyText1: AppTextStyles.bodyLg,
       bodyText2: AppTextStyles.body,
       subtitle1: AppTextStyles.bodySmBold,
       subtitle2: AppTextStyles.bodySm,
     ),
   );
  }
}
