import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Type of Tweet Annotation (reason to appear in a feed)
enum TweetAnnotationType {
  /// Someone followed by the user liked the tweet
  like,

  /// Someone followed by the user replied to the tweet
  reply,

  /// Tweet received new replies or
  newReplies,

  /// Tweets by someone followed by users that the user follows
  follow,

  /// Someone followed by the user retweeted the tweet
  retweet,

  /// A pinned tweet. e.g. in a profile feed
  pinned;

  /// [AppIcon] widget based on the tweet annotation type
  Widget get icon {
    switch (this) {
      case like:
        return const AppIcon.heartFill(size: 12);
      case reply:
      case newReplies:
        return const AppIcon.reply(size: 12);
      case follow:
        return const AppIcon.user(size: 12);
      case retweet:
        return const AppIcon.retweet(size: 12);
      case pinned:
        return const AppIcon.pin(size: 12);
    }
  }

  /// Returns the text to appear in the annotation
  /// based on the type
  String getText(BuildContext context) {
    switch (this) {
      case like:
        return AppLocalizations.of(context)!.liked;
      case reply:
        return AppLocalizations.of(context)!.replied;
      case newReplies:
        return AppLocalizations.of(context)!.receivedNewReplies;
      case follow:
        return AppLocalizations.of(context)!.receivedNewReplies;
      case retweet:
        return '';
      case pinned:
        return '';
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
        if (users.isNotEmpty)
          Text(
            '${users[0]} ',
            style: Theme.of(context).textTheme.caption,
          ),
        if (users.length > 1)
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
