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

  /// [AppIcon] widget based on the tweet annotation type
  Widget get icon {
    switch (this) {
      case liked:
        return const AppIcon.heartFill(size: 12);
      case replied:
      case newReplies:
        return const AppIcon.replyFill(size: 12);
      case follow:
        return const AppIcon.userFill(size: 12);
      case retweeted:
        return const AppIcon.retweet(size: 12);
      case pinned:
        return const AppIcon.pin(size: 12);
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
  bool get hasUsers {
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
    this.users = const [],
  });

  /// The type of the annotation
  final TweetAnnotationType type;

  /// List of display names of users responsible for
  /// the annotation
  ///
  /// e.g. `John Doe` replied, `John Doe` and `Jane Doe` liked
  final List<String> users;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        type.icon,
        const SizedBox(width: 5),
        if (type.hasUsers && users.isNotEmpty && users[0].isNotEmpty)
          Text(
            '${users[0]} ',
            style: Theme.of(context).textTheme.caption,
          ),
        if (type.hasUsers && users.length > 1 && users[1].isNotEmpty)
          Text(
            '${AppLocalizations.of(context)!.and} ${users[1]} ',
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
