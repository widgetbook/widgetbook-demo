/// Twitter entities Regex strings
class TwitterRegex {
  /// A Twitter username (Twitter handle)
  static String username = '[@][a-zA-Z0-9]+([_][a-zA-Z0-9]+)?';

  /// A Twitter hashtag
  static String hashtag = '[#][ء-يa-zA-Z0-9]+([_][ء-يa-zA-Z0-9]+)?';

  /// A Link URL
  static String url =
      r'(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,})';
}
