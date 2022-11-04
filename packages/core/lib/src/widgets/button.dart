import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// Button widget with variations
class Button extends StatelessWidget {
  /// Creates new instance of [Button]
  const Button({
    super.key,
    required this.label,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
    required this.height,
    required this.borderSide,
  });

  /// Creates new instance of [Button] with Primary button style
  const Button.primary({
    super.key,
    required this.label,
    this.onPressed,
    this.height = 40,
  })  : backgroundColor = AppColors.primary,
        textColor = AppColors.white,
        borderSide = BorderSide.none;

  /// Creates new instance of [Button] with Primary Outline button style
  const Button.primaryOutline({
    super.key,
    required this.label,
    this.onPressed,
    this.height = 40,
  })  : backgroundColor = AppColors.white,
        textColor = AppColors.primary,
        borderSide = const BorderSide(color: AppColors.primary);

  /// Creates new instance of [Button] with secondary button style
  const Button.secondary({
    super.key,
    required this.label,
    this.onPressed,
    this.height = 40,
  })  : backgroundColor = AppColors.secondary,
        textColor = AppColors.white,
        borderSide = BorderSide.none;

  /// Creates new instance of [Button] with secondary outline button style
  const Button.secondaryOutline({
    super.key,
    required this.label,
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

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        fixedSize: Size.fromHeight(height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(height / 2),
          side: borderSide,
        ),
      ),
      child: Text(label),
    );
  }
}

/// Use case for a Primary Button style
@WidgetbookUseCase(name: 'Primary Button', type: Button)
Widget primaryButtonUseCase(BuildContext context) {
  return Button.primary(
    label: 'Button',
    onPressed: () {},
  );
}

/// Use case for a Secondary Button style
@WidgetbookUseCase(name: 'Secondary Button', type: Button)
Widget secondaryButtonUseCase(BuildContext context) {
  return Button.secondary(
    label: 'Button',
    onPressed: () {},
  );
}
