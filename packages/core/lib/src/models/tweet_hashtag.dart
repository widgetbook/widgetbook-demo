/// Tweet hashtag data
class TweetHashtag {
  /// Creates tweet hashtag data
  const TweetHashtag({
    required this.start,
    required this.end,
    required this.tag,
  });

  /// Hashtag text start location in tweet text
  final int start;

  /// Hashtag text end location in tweet text
  final int end;

  /// Hashtag tag string
  final String tag;
}
