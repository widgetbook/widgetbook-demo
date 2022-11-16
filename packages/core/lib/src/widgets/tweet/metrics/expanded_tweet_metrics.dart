import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Likes, Retweets, and Quote Tweet metrics for a detailed tweet
class ExpandedTweetMetrics extends StatelessWidget {
  /// Creates a new instance of [ExpandedTweetMetrics]
  const ExpandedTweetMetrics({
    super.key,
    required this.metrics,
  });

  /// Number of tweet retweets
  final PublicMetrics metrics;

  @override
  Widget build(BuildContext context) {
    final metricValueTextStyle = Theme.of(context).textTheme.bodyText1;
    if (metrics.isZero) {
      return const Divider(height: 1);
    }

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.5, color: Theme.of(context).dividerColor),
          bottom: BorderSide(width: 0.5, color: Theme.of(context).dividerColor),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 14,
      ),
      child: Wrap(
        runSpacing: 10,
        spacing: 8,
        children: [
          if (metrics.retweets > 0)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MetricText(
                  value: metrics.retweets,
                  textStyle: metricValueTextStyle,
                ),
                const SizedBox(width: 5),
                Text(AppLocalizations.of(context)!.retweets),
              ],
            ),
          if (metrics.quoteTweets > 0)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MetricText(
                  value: metrics.quoteTweets,
                  textStyle: metricValueTextStyle,
                ),
                const SizedBox(width: 5),
                Text(AppLocalizations.of(context)!.quoteTweets),
              ],
            ),
          if (metrics.likes > 0)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MetricText(
                  value: metrics.likes,
                  textStyle: metricValueTextStyle,
                ),
                const SizedBox(width: 5),
                Text(AppLocalizations.of(context)!.likes),
              ],
            ),
        ],
      ),
    );
  }
}
