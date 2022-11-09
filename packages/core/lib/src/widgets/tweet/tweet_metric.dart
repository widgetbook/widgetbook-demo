import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Tweet metric with icon and metric text widgets
///
/// e.g. [Likes], [Replies], [Retweets]
class TweetMetric extends StatelessWidget {
  /// Creates new instance of [TweetMetric]
  const TweetMetric({
    super.key,
    this.metricValue = 0,
    this.iconSize = 15,
    required this.icon,
    this.activeColor = AppColors.primary,
    required this.onPressed,
    this.isActive = false,
  });

  /// TweetMetric metric value
  final int metricValue;

  /// Metric icon
  final Widget icon;

  /// Size of metric icon
  final double iconSize;

  /// Color of icon and metric value text when active
  final Color activeColor;

  /// Callback for [AppIconButton.onPressed]
  final VoidCallback? onPressed;

  /// Indicates if the metric is active
  /// to change the color value passed by [icon] from its
  /// default color to [activeColor]
  /// and the [AppIconButton.hoverColor] to [activeColor]
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppIconButton(
          isActive: isActive,
          size: iconSize,
          icon: icon,
          hoverColor: activeColor,
          activeColor: activeColor,
          onPressed: onPressed,
        ),
        MetricText(
          value: metricValue,
          isActive: isActive,
          activeColor: activeColor,
        ),
      ],
    );
  }
}
