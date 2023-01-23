import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Tweet metrics and share action widget
class TweetActions extends StatelessWidget {
  /// Creates a new instance of [TweetActions]
  const TweetActions({
    super.key,
    this.publicMetrics = const PublicMetrics(),
    this.onQuoteTweet,
    this.onRepliesPressed,
    this.onRetweet,
    this.onLikesChanged,
    this.onSharePressed,
    this.hideValues = false,
  });

  /// Replies metric onPressed callback [Replies.onPressed]
  final VoidCallback? onRepliesPressed;

  /// Retweets metric onRetweet callback [Retweets.onRetweet]
  final ValueChanged<bool>? onRetweet;

  /// Retweets metric onQuoteTweet callback [Retweets.onQuoteTweet]
  final VoidCallback? onQuoteTweet;

  /// Likes metric onLikesChanged callback [Likes.onLikesChanged]
  final ValueChanged<bool>? onLikesChanged;

  /// Share icon button onPressed callback
  final VoidCallback? onSharePressed;

  /// Tweet Public Metrics (likes, retweets, quoteTweets, replies)
  final PublicMetrics publicMetrics;

  /// Whether the value text is hidden
  final bool hideValues;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Replies(
            onPressed: onRepliesPressed,
            metricValue: publicMetrics.replies,
            hideValue: hideValues,
          ),
        ),
        // Expanded(
        //   child: Retweets(
        //     onRetweet: onRetweet,
        //     onQuoteTweet: onQuoteTweet,
        //     metricValue: publicMetrics.retweets,
        //     hideValue: hideValues,
        //   ),
        // ),
        Expanded(
          child: Likes(
            onLikesChanged: onLikesChanged,
            metricValue: publicMetrics.likes,
            hideValue: hideValues,
          ),
        ),
        Expanded(
          child: AppIconButton(
            size: 15,
            icon: const Icon(Icons.share),
            onPressed: onSharePressed,
          ),
        ),
      ],
    );
  }
}
