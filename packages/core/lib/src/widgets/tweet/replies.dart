import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Tweet replies icon and metric text widget
class Replies extends StatelessWidget {
  /// Creates new instance of [Replies]
  const Replies({
    super.key,
    this.metricValue = 0,
    this.iconSize = 15,
    this.onPressed,
    this.hideValue = false,
  });

  /// Replies metric value
  final int metricValue;

  /// Size of replies icon
  final double iconSize;

  /// Callback to notify parent widget of active/inactive change
  final VoidCallback? onPressed;

  /// Whether the value text is hidden
  final bool hideValue;

  @override
  Widget build(BuildContext context) {
    return TweetMetric(
      metricValue: metricValue,
      icon: const Icon(TwitterIcons.reply),
      iconSize: iconSize,
      onPressed: onPressed,
      hideValue: hideValue,
    );
  }
}
