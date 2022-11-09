import 'package:core/core.dart';

/// Tweet entities like mentions, hashtags, cachtags, urls, ..etc.
class TweetEntities {
  /// Creates a new instance of [TweetEntities]
  const TweetEntities({
    this.mentions = const [],
    this.hashtags = const [],
    this.urls = const [],
  });

  /// Tweet text mentions
  final List<TweetMention> mentions;

  /// Tweet text hashtags
  final List<TweetHashtag> hashtags;

  /// Tweet urls
  ///
  /// Includes tweet text urls as well as tweet media urls
  final List<TweetUrl> urls;
}
