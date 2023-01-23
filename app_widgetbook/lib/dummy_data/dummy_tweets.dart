import 'package:app_widgetbook/dummy_data/dummy_media.dart';
import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:core/core.dart';
import 'package:flutter/widgets.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;

/// Dummy tweets data to use in Widgetbook use cases
class DummyTweets {
  /// Dummy Tweet with 4 photos media
  ///
  /// https://twitter.com/widgetbook_io/status/1470683773419278339
  static Tweet fourPhotosTweet(BuildContext context) => Tweet(
        source: TweetSource.iPhone,
        rawText:
            "Our Open Source Widgetbook allows Flutter developers to catalogue their widgets in one central widget library. Please join our Discord server if you have any questions. We're happy to help: https://discord.com/invite/XxJGhvWzK3.",
        author: DummyUsers.widgetbook,
        createdAt: DateTime(2021, 12, 24),
        media: context.knobs.options(
          label: 'Media',
          description: 'The media shown in tweet.',
          labelBuilder: (v) => '${v.length} images',
          options: [
            DummyMedia.fourPhotosMedia,
            DummyMedia.fourPhotosMedia.take(3).toList(),
            DummyMedia.fourPhotosMedia.take(2).toList(),
          ],
        ),
        publicMetrics: const PublicMetrics(likes: 2, retweets: 2),
      );

  /// Dummy Tweet with 3 photos media
  ///
  /// https://twitter.com/widgetbook_io/status/1482002838440103941
  static Tweet threePhotosTweet = Tweet(
    source: TweetSource.iPhone,
    rawText:
        'With Widgetbook Cloud, your widgets can be synced with Figma and shared with everyone in your team to simplify frontend reviews. Signup for Early Access now: https://widgetbook.io.',
    author: DummyUsers.widgetbook,
    createdAt: DateTime(2021, 12, 24),
    media: DummyMedia.threePhotosMedia,
    publicMetrics: const PublicMetrics(likes: 2, retweets: 2),
  );

  /// Dummy Tweet with 1 photo media
  ///
  /// https://twitter.com/widgetbook_io/status/1478381071486050312
  static Tweet singlePhotoTweet = Tweet(
    source: TweetSource.iPhone,
    rawText:
        'Thanks a lot for your feedback throughout the last year! Together we will continue to simplify design reviews to bridge the gap between design and development!',
    author: DummyUsers.widgetbook,
    createdAt: DateTime(2021, 12, 24),
    media: DummyMedia.singlePhotoMedia,
    publicMetrics: const PublicMetrics(likes: 2, retweets: 2),
  );

  /// Dummy Tweet with 1 photo media
  ///
  /// https://twitter.com/widgetbook_io/status/1473588853135007746
  static Tweet gifTweet = Tweet(
    source: TweetSource.iPhone,
    rawText:
        'In this example, the Widget RecipeInfo is only properly implemented for the use case “short name”. When the user assigns a long name to this Widget, there is an overflow on both devices.',
    author: DummyUsers.widgetbook,
    createdAt: DateTime(2021, 12, 24),
    media: DummyMedia.gifMedia,
    publicMetrics: const PublicMetrics(likes: 2, retweets: 2),
  );

  /// Dummy Tweet with 1 photo media
  ///
  /// https://twitter.com/roaakdm/status/1569048716027531264

  static List<Tweet> widgetbookHomeFeed(BuildContext context) => [
        fourPhotosTweet(context),
        threePhotosTweet,
        singlePhotoTweet,
      ];
}
