import 'package:core/src/widgets/tweet/tweet_metric.dart';
import 'package:flutter/material.dart';

/// Tweet replies icon and metric text widget
class Replies extends StatelessWidget {
  /// Creates new instance of [Replies]
  const Replies({
    super.key,
    this.metricValue = 0,
    this.iconSize = 15,
    this.onPressed,
  });

  /// Replies metric value
  final int metricValue;

  /// Size of replies icon
  final double iconSize;

  /// Callback to notify parent widget of active/inactive change
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TweetMetric(
      metricValue: metricValue,
      // Todo: change to design icons
      icon: const Icon(Icons.mode_comment_outlined),
      iconSize: iconSize,
      onPressed: onPressed,
    );
  }
}
