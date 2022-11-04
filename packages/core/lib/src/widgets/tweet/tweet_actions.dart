import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Tweet metrics and share action widget
class TweetActions extends StatelessWidget {
  /// Creates a new instance of [TweetActions]
  const TweetActions({
    super.key,
    this.repliesCount = 0,
    this.onRepliesPressed,
    this.retweetsCount = 0,
    this.onRetweet,
    this.onQuoteTweet,
    this.likesCount = 0,
    this.onLikesChanged,
    this.onSharePressed,
  });

  /// Number of tweet replies
  final int repliesCount;

  /// Replies metric onPressed callback [Replies.onPressed]
  final VoidCallback? onRepliesPressed;

  /// Number of tweet retweets
  final int retweetsCount;

  /// Retweets metric onRetweet callback [Retweets.onRetweet]
  final ValueChanged<bool>? onRetweet;

  /// Retweets metric onQuoteTweet callback [Retweets.onQuoteTweet]
  final VoidCallback? onQuoteTweet;

  /// Number of tweet likes
  final int likesCount;

  /// Likes metric onLikesChanged callback [Likes.onLikesChanged]
  final ValueChanged<bool>? onLikesChanged;

  /// Share icon button onPressed callback
  final VoidCallback? onSharePressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Replies(
            onPressed: onRepliesPressed,
            metricValue: repliesCount,
          ),
        ),
        Expanded(
          child: Retweets(
            onRetweet: onRetweet,
            onQuoteTweet: onQuoteTweet,
            metricValue: retweetsCount,
          ),
        ),
        Expanded(
          child: Likes(
            onLikesChanged: onLikesChanged,
            metricValue: likesCount,
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
