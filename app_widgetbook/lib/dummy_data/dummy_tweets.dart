import 'package:app_widgetbook/dummy_data/dummy_media.dart';
import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:core/core.dart';

/// Dummy tweets data to use in Widgetbook use cases
class DummyTweets {
  /// Dummy Tweet with 4 photos media
  ///
  /// https://twitter.com/widgetbook_io/status/1470683773419278339
  static Tweet fourPhotosTweet = Tweet(
    source: TweetSource.iPhone,
    rawText:
        '𝐊𝐞𝐞𝐩𝐢𝐧𝐠 𝐚𝐧 𝐨𝐯𝐞𝐫𝐯𝐢𝐞𝐰 𝐨𝐟 𝐚𝐥𝐥 𝐲𝐨𝐮𝐫 𝐰𝐢𝐝𝐠𝐞𝐭𝐬 🔎Learn more: https://t.co/a2ry2mhMyw#flutter #flutterapprentice #flutterdev #dart #programming #dev #appdev #dart #app #flutterappdevelopment #mobileapp #development #ui #Widgetbook https://t.co/O4rYEjggsH',
    author: DummyUsers.widgetbook,
    createdAt: DateTime(2021, 12, 24),
    media: DummyMedia.fourPhotosMedia,
    publicMetrics: const PublicMetrics(likes: 2, retweets: 2),
    entities: const TweetEntities(
      hashtags: [
        TweetHashtag(start: 79, end: 87, tag: 'flutter'),
        TweetHashtag(start: 88, end: 106, tag: 'flutterapprentice'),
        TweetHashtag(start: 107, end: 118, tag: 'flutterdev'),
        TweetHashtag(start: 119, end: 124, tag: 'dart'),
        TweetHashtag(start: 125, end: 137, tag: 'programming'),
        TweetHashtag(start: 138, end: 142, tag: 'dev'),
        TweetHashtag(start: 143, end: 150, tag: 'appdev'),
        TweetHashtag(start: 151, end: 156, tag: 'dart'),
        TweetHashtag(start: 157, end: 161, tag: 'app'),
        TweetHashtag(start: 162, end: 184, tag: 'flutterappdevelopment'),
        TweetHashtag(start: 185, end: 195, tag: 'mobileapp'),
        TweetHashtag(start: 196, end: 208, tag: 'development'),
        TweetHashtag(start: 209, end: 212, tag: 'ui'),
        TweetHashtag(start: 213, end: 224, tag: 'Widgetbook'),
      ],
    ),
  );
}
