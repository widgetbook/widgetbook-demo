import 'package:core/src/styles/app_colors.dart';
import 'package:core/src/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

/// Helper class for app wide themes
class AppThemes {
  /// Returns theme data
  static ThemeData getTheme({bool isDark = false}) {
    return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      fontFamily: AppTextStyles.fontFamily,
      primaryColor: AppColors.getMaterialColorFromColor(AppColors.primary),
      scaffoldBackgroundColor: isDark ? AppColors.black : AppColors.white,
      dividerColor: AppColors.border,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          elevation: 0,
          textStyle: AppTextStyles.button,
        ),
      ),
      iconTheme: IconThemeData(
        color: isDark ? AppColors.whiteLight : AppColors.textLight,
      ),
      textTheme: TextTheme(
        headline1: AppTextStyles.h1,
        headline2: AppTextStyles.h2,
        headline3: AppTextStyles.h3,
        headline4: AppTextStyles.h4,
        headline5: AppTextStyles.h5,
        caption: AppTextStyles.caption.copyWith(
          color: isDark ? AppColors.whiteLight : AppColors.textLight,
        ),
        bodyText1: AppTextStyles.bodyBold,
        bodyText2: AppTextStyles.body.copyWith(
          color: isDark ? AppColors.whiteLight : AppColors.textLight,
        ),
        subtitle1: AppTextStyles.bodySmBold.copyWith(
          color: isDark ? AppColors.whiteLight : AppColors.textLight,
        ),
        subtitle2: AppTextStyles.bodySm.copyWith(
          color: isDark ? AppColors.whiteLight : AppColors.textLight,
        ),
      ),
    );
  }
}
