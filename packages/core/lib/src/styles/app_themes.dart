import 'package:core/src/styles/app_colors.dart';
import 'package:core/src/styles/app_text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Helper class for app wide themes
class AppThemes {
  /// Returns theme data
  static ThemeData getTheme({bool isDark = false}) {
    return ThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      fontFamily: AppTextStyles.fontFamily,
      primaryColor: AppColors.getMaterialColorFromColor(AppColors.primary),
      scaffoldBackgroundColor: isDark ? AppColors.black : AppColors.white,
      dividerColor:
          isDark ? AppColors.white.withOpacity(0.2) : AppColors.border,
      splashFactory: defaultTargetPlatform == TargetPlatform.android
          ? InkSplash.splashFactory
          : NoSplash.splashFactory,
      highlightColor: isDark
          ? AppColors.white.withOpacity(0.2)
          : AppColors.black.withOpacity(0.1),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: AppTextStyles.bodyLgBlack.copyWith(
          color: isDark ? AppColors.white : AppColors.black,
        ),
        systemOverlayStyle:
            isDark ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTextStyles.body,
        labelStyle: AppTextStyles.body,
        floatingLabelStyle: AppTextStyles.body.copyWith(
          color: AppColors.primary,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          elevation: 0,
          textStyle: AppTextStyles.button,
          splashFactory: defaultTargetPlatform == TargetPlatform.android
              ? InkSplash.splashFactory
              : NoSplash.splashFactory,
        ),
      ),
      iconTheme: IconThemeData(
        color: isDark ? AppColors.whiteLight : AppColors.textLight,
      ),
      textTheme: TextTheme(
        headline1: AppTextStyles.h1,
        headline2: AppTextStyles.h2,
        headline3: AppTextStyles.h3.copyWith(
          color: isDark ? AppColors.white : AppColors.black,
        ),
        headline4: AppTextStyles.h4.copyWith(
          color: isDark ? AppColors.white : AppColors.black,
        ),
        headline5: AppTextStyles.h5,
        caption: AppTextStyles.caption.copyWith(
          color: isDark ? AppColors.whiteLight : AppColors.textLight,
        ),
        bodyText1: AppTextStyles.bodyBold,
        bodyText2: AppTextStyles.body.copyWith(
          color: isDark ? AppColors.whiteLight : AppColors.textLight,
        ),
        subtitle1: AppTextStyles.bodySmBold,
        subtitle2: AppTextStyles.bodySm.copyWith(
          color: isDark ? AppColors.whiteLight : AppColors.textLight,
        ),
      ),
    );
  }
}

/// Theme extension with helper getters and methods
extension ThemeExtension on ThemeData {
  /// Whether theme brightness is dark
  bool get isDark {
    return brightness == Brightness.dark;
  }
}
