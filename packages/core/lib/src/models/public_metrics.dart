/// Public metrics of a tweet
class PublicMetrics {
  /// Creates a new instance of [PublicMetrics]
  const PublicMetrics({
    this.retweets = 0,
    this.quoteTweets = 0,
    this.likes = 0,
    this.replies = 0,
  });

  /// Tweet retweets count
  final int retweets;

  /// Tweet quote retweets count
  final int quoteTweets;

  /// Tweet likes count
  final int likes;

  /// Tweet replies count
  final int replies;

  /// Whether all metrics except replies are zero
  bool get isZero {
    return retweets == 0 && quoteTweets == 0 && likes == 0;
  }
}
