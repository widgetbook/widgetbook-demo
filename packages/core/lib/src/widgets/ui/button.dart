import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Button widget with variations
class Button extends StatelessWidget {
  /// Creates new instance of [Button]
  const Button({
    super.key,
    required this.label,
    this.onPressed,
    this.backgroundColor,
    this.icon,
    this.textColor,
    required this.height,
    required this.borderSide,
  });

  /// Creates new instance of [Button] with Primary button style
  const Button.primary({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
  })  : backgroundColor = AppColors.primary,
        textColor = AppColors.white,
        borderSide = BorderSide.none;

  /// Creates new instance of [Button] with Primary Outline button style
  const Button.primaryOutline({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
  })  : backgroundColor = AppColors.white,
        textColor = AppColors.primary,
        borderSide = const BorderSide(color: AppColors.primary);

  /// Creates new instance of [Button] with secondary button style
  const Button.secondary({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
  })  : backgroundColor = AppColors.secondary,
        textColor = AppColors.white,
        borderSide = BorderSide.none;

  /// Creates new instance of [Button] with secondary outline button style
  const Button.secondaryOutline({
    super.key,
    required this.label,
    this.icon,
    this.onPressed,
    this.height = 40,
  })  : backgroundColor = AppColors.white,
        textColor = AppColors.secondary,
        borderSide = const BorderSide(color: AppColors.border);

  /// Button text label
  final String label;

  /// Button background color
  final Color? backgroundColor;

  /// Button text color
  final Color? textColor;

  /// Button onPressed callback
  final VoidCallback? onPressed;

  /// Button height
  final double height;

  /// Button border
  final BorderSide borderSide;

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
          side: borderSide,
        ),
        textStyle: Theme.of(context).textTheme.button!.copyWith(
              height: icon == null ? 1.05 : null,
            ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 10),
              child: Icon(icon, size: 20),
            ),
          Text(label),
        ],
      ),
    );
  }
}
