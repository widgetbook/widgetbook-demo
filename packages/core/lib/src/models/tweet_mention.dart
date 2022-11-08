/// Tweet text mention data
class TweetMention {
  /// Creates Tweet text mention data
  const TweetMention({
    required this.start,
    required this.end,
    required this.username,
    required this.id,
  });

  /// Mention text start location in tweet text
  final int start;

  /// Mention text end location in tweet text
  final int end;

  /// Mention username value
  final String username;

  /// Mention user id
  final String id;
}
