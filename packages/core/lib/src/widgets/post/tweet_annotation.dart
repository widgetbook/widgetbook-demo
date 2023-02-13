import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Type of Tweet Annotation (reason to appear in a feed)
enum TweetAnnotationType {
  /// Someone followed by the user liked the tweet
  liked,

  /// Someone followed by the user replied to the tweet
  replied,

  /// Tweet received new replies or
  newReplies,

  /// Tweets by someone followed by users that the user follows
  follow,

  /// Someone followed by the user retweeted the tweet
  retweeted,

  /// A pinned tweet. e.g. in a profile feed
  pinned;

  /// Icon data based on the tweet annotation type
  IconData get icon {
    switch (this) {
      case liked:
        return TwitterIcons.heart_fill;
      case replied:
      case newReplies:
        return TwitterIcons.reply_fill;
      case follow:
        return TwitterIcons.user_fill;
      case retweeted:
        return TwitterIcons.retweet;
      case pinned:
        return TwitterIcons.pin;
    }
  }

  /// Returns the text to appear in the annotation
  /// based on the type
  String getText(BuildContext context) {
    switch (this) {
      case liked:
        return AppLocalizations.of(context)!.liked;
      case replied:
        return AppLocalizations.of(context)!.replied;
      case newReplies:
        return AppLocalizations.of(context)!.receivedNewReplies;
      case follow:
        return AppLocalizations.of(context)!.receivedNewReplies;
      case retweeted:
        return AppLocalizations.of(context)!.retweeted;
      case pinned:
        return AppLocalizations.of(context)!.pinnedTweet;
    }
  }

  /// Determines which types have users
  ///
  /// For example, the [TweetAnnotationType.newReplies] does not
  /// have users because it's used as `received new replies`
  /// Whereas [TweetAnnotationType.liked] has users because it's used as
  /// `user1 (and user2) liked`
  bool get hasUser {
    switch (this) {
      case liked:
      case replied:
      case follow:
      case retweeted:
        return true;
      case newReplies:
      case pinned:
        return false;
    }
  }
}

/// Widget for the Tweet reason of appearing in a feed
///
/// Possibilities:
/// - John Doe liked (heart-fill icon)
/// - John Doe replied (reply icon)
/// - Received new replies (reply icon)
/// - John Doe retweeted (retweet icon)
/// - John Doe and Jane Doe follows (user-fill icon)
/// - Pinned tweet (pin icon)
class TweetAnnotation extends StatelessWidget {
  /// Creates a new instance of [TweetAnnotation]
  const TweetAnnotation({
    super.key,
    required this.type,
    this.user,
  });

  /// The type of the annotation
  final TweetAnnotationType type;

  /// Display name of user responsible for the annotation
  ///
  /// e.g. `John Doe` replied, `John Doe` liked
  final String? user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(type.icon, size: 12),
        const AppGap.xs(),
        if (type.hasUser && user != null && user!.isNotEmpty)
          Text(
            '$user ',
            style: Theme.of(context).textTheme.caption,
          ),
        Text(
          type.getText(context),
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );
  }
}
