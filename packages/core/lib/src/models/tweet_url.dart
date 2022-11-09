/// Tweet url data
class TweetUrl {
  /// Creates a Tweet url data object
  const TweetUrl({
    required this.start,
    required this.end,
    required this.url,
    required this.expandedUrl,
    this.displayUrl,
    required this.status,
    this.unwoundUrl,
    this.title,
    this.description,
    this.mediaKey,
  });

  /// Url text start location in tweet text
  final int start;

  /// Url text end location in tweet text
  final int end;

  /// Url text
  final String url;

  /// Expanded url
  final String expandedUrl;

  /// Expanded url
  final String? displayUrl;

  /// Url network status
  final int status;

  ///
  final String? unwoundUrl;

  /// Url SEO title
  final String? title;

  /// Url SEO description
  final String? description;

  /// Url media key for tweet media urls
  final String? mediaKey;
}
