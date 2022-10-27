import 'package:core/src/styles/app_colors.dart';
import 'package:core/src/tweet/widgets/tweet_metric.dart';
import 'package:flutter/material.dart';

/// Tweet retweets icon and metric text widget
class Retweets extends StatelessWidget {
  /// Creates new instance of [Retweets]
  const Retweets({
    super.key,
    this.metricValue = 0,
    this.iconSize = 15,
    this.onChanged,
  });

  /// Retweets metric value
  final int metricValue;

  /// Size of retweets icon
  final double iconSize;

  /// Callback to notify parent widget of active/inactive change
  final ValueChanged<bool>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TweetMetric(
      metricValue: metricValue,
      // Todo: change to design icons
      icon: const Icon(Icons.repeat),
      activeIcon: const Icon(Icons.repeat),
      iconSize: iconSize,
      activeColor: AppColors.success,
      onChanged: onChanged,
    );
  }
}
