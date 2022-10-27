import 'package:core/src/styles/app_colors.dart';
import 'package:core/src/tweet/widgets/widgets.dart';
import 'package:core/src/widgets/app_icon_button.dart';
import 'package:flutter/material.dart';

/// Tweet metric with icon and metric text widgets
///
/// e.g. [Likes], [Replies], [Retweets]
class TweetMetric extends StatefulWidget {
  /// Creates new instance of [TweetMetric]
  const TweetMetric({
    super.key,
    this.metricValue = 0,
    this.iconSize = 15,
    required this.icon,
    this.activeIcon,
    this.activeColor = AppColors.primary,
    this.iconButton,
    required this.onChanged,
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

  /// Optional widget to replace the [AppIconButton]
  final Widget? iconButton;

  /// Callback to notify parent widget of active/inactive change
  final ValueChanged<bool> onChanged;

  @override
  State<TweetMetric> createState() => _TweetMetricState();
}

class _TweetMetricState extends State<TweetMetric>
    with SingleTickerProviderStateMixin {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widget.iconButton ??
        AppIconButton(
          isActive: _isActive,
              size: widget.iconSize,
          icon: widget.icon,
          activeIcon: widget.activeIcon,
          hoverColor: widget.activeColor,
          activeColor: widget.activeColor,
          onPressed: () {
            setState(() {
              _isActive = !_isActive;
            });
            widget.onChanged(_isActive);
          },
        ),
        MetricText(
          value: widget.metricValue,
          isActive: _isActive,
          activeColor: widget.activeColor,
        ),
      ],
    );
  }
}
