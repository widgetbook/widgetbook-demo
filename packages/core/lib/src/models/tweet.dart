import 'package:core/core.dart';
import 'package:core/src/utils/twitter_regex.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet.freezed.dart';

/// Tweet object model
@freezed
class Tweet with _$Tweet {
  /// Creates a new instance of [Tweet]
  const factory Tweet({
    required String rawText,
    TweetAnnotationType? annotationType,
    required User author,
    @Default([]) List<Media> media,
    @Default(PublicMetrics()) PublicMetrics publicMetrics,
    required DateTime createdAt,
    @Default(TweetEntities()) TweetEntities entities,

    /// Id of the user that this tweet is a reply to
    ///
    /// Only available when this tweet is a reply.
    ///
    /// If available, a `replying to @{inReplyToUser.username}` text
    /// will be shown
    User? inReplyToUser,
    Tweet? quotedTweet,
    required TweetSource source,
  }) = _Tweet;

  const Tweet._();

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
}
