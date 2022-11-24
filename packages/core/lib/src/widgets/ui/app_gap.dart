import 'package:core/src/styles/app_spacing.dart';
import 'package:flutter/material.dart';

/// A wrapper around [SizedBox] to create a Gap widget
/// that can be used to separate other widgets
///
/// Comes with use cases for different sizes
///
/// Usage Examples:
/// Instead of `const SizedBox(width: AppSpacing.sm)`
/// We can use `const AppGap.sm()`
///
/// Instead of `const SizedBox(height: AppSpacing.md)`
/// We can use `const AppGap.md()`
class AppGap extends StatelessWidget {
  /// Creates an instance of [AppGap]
  const AppGap({
    super.key,
    this.width,
    this.height,
  });

  /// A gap of size xx-small
  const AppGap.xxs({super.key})
      : width = AppSpacing.xxs,
        height = AppSpacing.xxs;

  /// A gap of size x-small
  const AppGap.xs({super.key})
      : width = AppSpacing.xs,
        height = AppSpacing.xs;

  /// A gap of size small
  const AppGap.sm({super.key})
      : width = AppSpacing.sm,
        height = AppSpacing.sm;

  /// A gap of default medium size
  const AppGap.md({super.key})
      : width = AppSpacing.md,
        height = AppSpacing.md;

  /// A gap of default medium size
  const AppGap.lg({super.key})
      : width = AppSpacing.lg,
        height = AppSpacing.lg;

  /// A gap of default medium size
  const AppGap.xl({super.key})
      : width = AppSpacing.xl,
        height = AppSpacing.xl;

  /// A gap of default medium size
  const AppGap.xxl({super.key})
      : width = AppSpacing.xxl,
        height = AppSpacing.xxl;

  /// Gap width
  final double? width;

  /// Gap height
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
