import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Tweet retweets icon and metric text widget
class Retweets extends StatefulWidget {
  /// Creates new instance of [Retweets]
  const Retweets({
    super.key,
    this.metricValue = 0,
    this.iconSize = 15,
    this.onRetweet,
    this.onQuoteTweet,
  });

  /// Retweets metric value
  final int metricValue;

  /// Size of retweets icon
  final double iconSize;

  /// Callback to notify parent widget of Retweet/Undo Retweet actions
  final ValueChanged<bool>? onRetweet;

  /// Callback to notify parent widget of quote tweet action
  final VoidCallback? onQuoteTweet;

  @override
  State<Retweets> createState() => _RetweetsState();
}

class _RetweetsState extends State<Retweets> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return TweetMetric(
      isActive: _isActive,
      metricValue: widget.metricValue,
      icon: const Icon(TwitterIcons.retweet),
      iconSize: widget.iconSize,
      activeColor: AppColors.success,
      onPressed: () {
        // Todo: This should open a dropdown of "Retweet/Quote Tweet"
        // Only Retweet activates the metric
        // Quote Tweet should open a dialog to submit a tweet
        setState(() {
          _isActive = !_isActive;
        });
      },
    );
  }
}
