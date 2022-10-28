import 'package:core/src/styles/app_colors.dart';
import 'package:core/src/widgets/app_icon_button.dart';
import 'package:core/src/widgets/tweet/tweet.dart';
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
    this.activeIcon,
    this.activeColor = AppColors.primary,
    required this.onPressed,
    this.isActive = false,
  });

  /// TweetMetric metric value
  final int metricValue;

  /// Metric icon
  final Widget icon;

  /// Optional metric icon when active
  ///
  /// [icon] is used with [activeColor] when not provided
  final Widget? activeIcon;

  /// Size of metric icon
  final double iconSize;

  /// Color of icon and metric value text when active
  final Color activeColor;

  /// Callback for [AppIconButton.onPressed]
  final VoidCallback? onPressed;

  /// Indicates if the metric is active
  /// to change [icon] to [activeIcon] and the color to [activeColor]
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
          activeIcon: activeIcon,
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
