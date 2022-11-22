import 'package:core/src/styles/app_spacing.dart';
import 'package:flutter/material.dart';

/// A wrapper around [SizedBox] to create a Gap widget
/// that can be used to separate other widgets
///
/// Comes with use cases for different sizes
/// as horizontal `h` or vertical `v` spacing
///
/// Usage:
/// Instead of `const SizedBox(width: AppSpacing.sm)`
/// We can use `const AppGap.hSmall()`
class AppGap extends StatelessWidget {
  /// Creates an instance of [AppGap]
  const AppGap({
    super.key,
    this.width,
    this.height,
  });

  /// A vertical gap of size small
  const AppGap.vSmall({super.key})
      : width = null,
        height = AppSpacing.sm;

  /// A horizontal gap of size small
  const AppGap.hSmall({super.key})
      : height = null,
        width = AppSpacing.sm;

  /// Width parameter for horizontal gaps
  final double? width;

  /// Height parameter for vertical gaps
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
