import 'package:core/src/tweet/widgets/tweet_metric.dart';
import 'package:flutter/material.dart';

/// Tweet replies icon and metric text widget
class Replies extends StatelessWidget {
  /// Creates new instance of [Replies]
  const Replies({
    super.key,
    this.metricValue = 0,
    this.iconSize = 15,
  });

  /// Replies metric value
  final int metricValue;

  /// Size of replies icon
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return TweetMetric(
      metricValue: metricValue,
      // Todo: change to design icons
      icon: const Icon(Icons.mode_comment_outlined),
      activeIcon: const Icon(Icons.mode_comment),
      iconSize: iconSize,
      onChanged: (value) {
        // Todo: implement reply action
      },
    );
  }
}
