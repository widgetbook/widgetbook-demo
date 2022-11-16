/// The source device/app of the tweet
enum TweetSource {
  /// Tweet was sent from a web app/browser
  web,

  /// Tweet was sent from an iPhone
  iPhone,

  /// Tweet was sent from an Android device
  android;

  /// Retrieves enum value from text returned from the Twitter API
  static TweetSource fromText(String text) {
    switch (text) {
      case 'Twitter for iPhone':
        return TweetSource.iPhone;
      case 'Twitter for Android':
        return TweetSource.android;
      case 'Twitter for Web':
      default:
        return TweetSource.web;
    }
  }

  /// Retrieves string value from enum
  String toText() {
    switch (this) {
      case iPhone:
        return 'Twitter for iPhone';
      case android:
        return 'Twitter for Android';
      case web:
        return 'Twitter for Web';
    }
  }
}
