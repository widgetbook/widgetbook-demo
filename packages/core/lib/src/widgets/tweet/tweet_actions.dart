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

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Replies(
            onPressed: onRepliesPressed,
            metricValue: publicMetrics.replies,
          ),
        ),
        Expanded(
          child: Retweets(
            onRetweet: onRetweet,
            onQuoteTweet: onQuoteTweet,
            metricValue: publicMetrics.retweets,
          ),
        ),
        Expanded(
          child: Likes(
            onLikesChanged: onLikesChanged,
            metricValue: publicMetrics.likes,
          ),
        ),
        Expanded(
          child: AppIconButton(
            size: 15,
            icon: const Icon(TwitterIcons.share),
            onPressed: onSharePressed,
          ),
        ),
      ],
    );
  }
}
