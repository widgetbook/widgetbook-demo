import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Likes, Retweets, and Quote Tweet metrics for a detailed tweet
class DetailedTweetMetrics extends StatelessWidget {
  /// Creates a new instance of [DetailedTweetMetrics]
  const DetailedTweetMetrics({
    super.key,
    this.retweetsCount = 0,
    this.quoteTweetsCount = 0,
    this.likesCount = 0,
  });

  /// Number of tweet retweets
  final int retweetsCount;

  /// Number of tweet quote retweets
  final int quoteTweetsCount;

  /// Number of tweet likes
  final int likesCount;

  @override
  Widget build(BuildContext context) {
    final metricValueTextStyle = Theme.of(context).textTheme.bodyText1;

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
        children: [
          if (retweetsCount > 0)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MetricText(
                  value: retweetsCount,
                  textStyle: metricValueTextStyle,
                ),
                const SizedBox(width: 5),
                Text(AppLocalizations.of(context)!.retweets),
                const SizedBox(width: 10),
              ],
            ),
          if (quoteTweetsCount > 0)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MetricText(
                  value: quoteTweetsCount,
                  textStyle: metricValueTextStyle,
                ),
                const SizedBox(width: 5),
                Text(AppLocalizations.of(context)!.quoteTweets),
                const SizedBox(width: 10),
              ],
            ),
          if (likesCount > 0)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MetricText(
                  value: likesCount,
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
