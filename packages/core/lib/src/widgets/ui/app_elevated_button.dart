import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// ElevatedButton wrapper for the app with variations
class AppElevatedButton extends StatelessWidget {
  /// Creates ElevatedButton wrapper
  const AppElevatedButton({
    super.key,
    this.label,
    this.onPressed,
    this.backgroundColor,
    this.icon,
    this.textColor,
    required this.height,
    required this.borderColor,
  });

  /// Creates new instance of [AppElevatedButton] with Primary button style
  const AppElevatedButton.primary({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
  })  : backgroundColor = AppColors.primary,
        textColor = AppColors.white,
        borderColor = null;

  /// Creates new instance of [AppElevatedButton] with Primary Outline button style
  const AppElevatedButton.primaryOutline({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
  })  : backgroundColor = AppColors.white,
        textColor = AppColors.primary,
        borderColor = AppColors.primary;

  /// Creates new instance of [AppElevatedButton] with secondary button style
  const AppElevatedButton.secondary({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
  })  : backgroundColor = AppColors.secondary,
        textColor = AppColors.white,
        borderColor = null;

  /// Creates new instance of [AppElevatedButton] with secondary outline button style
  const AppElevatedButton.secondaryOutline({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
  })  : backgroundColor = AppColors.white,
        textColor = AppColors.secondary,
        borderColor = AppColors.border;

  /// Button text label
  final String? label;

  /// Button background color
  final Color? backgroundColor;

  /// Button text color
  final Color? textColor;

  /// Button onPressed callback
  final VoidCallback? onPressed;

  /// Button height
  final double height;

  /// Button border
  final Color? borderColor;

  /// Optional icon
  final IconData? icon;

  Color? _getBackgroundColor(bool isDark) {
    if (isDark) {
      if (backgroundColor == AppColors.white) {
        return AppColors.secondary;
      } else if (backgroundColor == AppColors.secondary) {
        return AppColors.white;
      }
    }
    return backgroundColor;
  }

  Color? _getTextColor(bool isDark) {
    if (isDark) {
      if (textColor == AppColors.white) {
        return AppColors.secondary;
      } else if (textColor == AppColors.secondary) {
        return AppColors.white;
      }
    }
    return textColor;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final dynamicBackgroundColor = _getBackgroundColor(isDark);
    final dynamicTextColor = _getTextColor(isDark);

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: dynamicBackgroundColor,
        foregroundColor: dynamicTextColor,
        fixedSize: Size.fromHeight(height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height / 2),
          side: borderColor == null
              ? BorderSide.none
              : BorderSide(color: borderColor!),
        ),
        textStyle: Theme.of(context).textTheme.button!.copyWith(height: 1.05),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Padding(
              padding: EdgeInsetsDirectional.only(end: label == null ? 0 : 10),
              child: Icon(icon, size: height * 0.3),
            ),
          if (label != null) Text(label!),
        ],
      ),
    );
  }
}
