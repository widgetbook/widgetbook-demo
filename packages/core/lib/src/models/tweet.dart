import 'package:core/core.dart';
import 'package:core/src/utils/twitter_regex.dart';

/// Tweet object model
class Tweet {
  /// Creates a new instance of [Tweet]
  const Tweet({
    required this.rawText,
    this.annotationType,
    required this.user,
    this.media = const [],
    this.publicMetrics = const PublicMetrics(),
    required this.createdAt,
    this.entities = const TweetEntities(),
  });

  /// Tweet text
  final String rawText;

  /// Parses raw text into markdown with links for
  /// urls, mentions, and hashtags
  String get text {
    var parsedText = '$rawText ';
    final hashtagRegExp = RegExp(TwitterRegex.hashtag);
    final hashtagMatches = hashtagRegExp.allMatches(parsedText).toList();
    for (final match in hashtagMatches) {
      final matchedText = match.group(0);
      if (matchedText != null) {
        parsedText = parsedText.replaceAll(
          ' $matchedText ',
          ' [$matchedText](hashtag_lookup) ',
        );
      }
    }

    final usernameRegExp = RegExp(TwitterRegex.username);
    final usernameMatches = usernameRegExp.allMatches(parsedText).toList();
    for (final match in usernameMatches) {
      final matchedText = match.group(0);
      if (matchedText != null) {
        parsedText = parsedText.replaceAll(
          ' $matchedText ',
          ' [$matchedText](user_lookup) ',
        );
      }
    }
    return parsedText;
  }

  /// Tweet annotation
  final TweetAnnotationType? annotationType;

  /// Tweet user
  final User user;

  /// Tweet media list
  final List<Media> media;

  /// Tweet public metrics (likes, retweets, ..etc)
  final PublicMetrics publicMetrics;

  /// Tweet create date
  final DateTime createdAt;

  /// Entities inside a tweet text (mentions, hashtags, urls, ..etc)
  final TweetEntities entities;
}
