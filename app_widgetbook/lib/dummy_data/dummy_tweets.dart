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
        'Learn more: https://t.co/a2ry2mhMyw#flutter #flutterapprentice #flutterdev #dart #programming #dev #appdev #dart #app #flutterappdevelopment #mobileapp #development #ui #Widgetbook https://t.co/O4rYEjggsH',
    author: DummyUsers.widgetbook,
    createdAt: DateTime(2021, 12, 24),
    media: DummyMedia.fourPhotosMedia,
    publicMetrics: const PublicMetrics(likes: 2, retweets: 2),
  );

  /// Dummy Tweet with 3 photos media
  ///
  /// https://twitter.com/widgetbook_io/status/1482002838440103941
  static Tweet threePhotosTweet = Tweet(
    source: TweetSource.iPhone,
    rawText:
        'Collaborate with your team. \n🎯 Simplify the review process\n🎯 Accessible preview from anywhere\n\nCheck the link: https://t.co/Mn8nJCKFk7\n\n#flutter #flutterapprentice #flutterdev #dart #programming #dev #appdev #dart #app https://t.co/MIBG44N9al',
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
        '#Widgetbook starts top motivated into the coming year.  Together we will continue to work on our goal to improve the communication between designer and developer and to simplify design reviews.\n#flutter #flutterapprentice #flutterdev #dart #programming #dev https://t.co/N3gnFT9v0K',
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
        'In this example, the Widget RecipeInfo is only properly implemented for the use case “short name”. When the user assigns a long name to this Widget, there is an overflow on both devices.\n#flutter #flutterapprentice #flutterdev #dart https://t.co/OehTPjwouN',
    author: DummyUsers.widgetbook,
    createdAt: DateTime(2021, 12, 24),
    media: DummyMedia.gifMedia,
    publicMetrics: const PublicMetrics(likes: 2, retweets: 2),
  );

  /// Dummy Tweet with 1 photo media
  ///
  /// https://twitter.com/timsneath/status/1592592818853535746
  static Tweet timSneathTweet = Tweet(
    source: TweetSource.iPhone,
    rawText:
        'We’re delighted to announce Flutter Forward, our next major Flutter event, streaming live to the world from Nairobi, Kenya on January 25th, 2023. #Flutter #FlutterForward 🐦💙🇰🇪 1/ https://t.co/Gc4bP2TVZ4',
    author: DummyUsers.timSneath,
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
    media: [
      const Media(
        key: '3_1592592315893567488',
        type: MediaType.photo,
        url: 'https://pbs.twimg.com/media/FhoGRfzaUAAoXdI.jpg',
      )
    ],
    publicMetrics: const PublicMetrics(likes: 2, retweets: 2),
  );

  /// Dummy Tweet with 1 photo media
  ///
  /// https://twitter.com/roaakdm/status/1569048716027531264
  static Tweet roaaVikingsTweet = Tweet(
    source: TweetSource.iPhone,
    rawText:
        'In my @FlutterVikings talk, I talked about what it takes to create animations like this one👇🏼\n\nIn this article you will find links to the talk, slides, live demo and code as well as a written version of the talk 📃\nhttps://t.co/K02jUZhpIm\n\nSource code 👇🏼\n#Flutter #FlutterVikings https://t.co/Sx030xyl2z',
    author: DummyUsers.roaakdm,
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
    media: [
      const Media(
        key: '7_1569048506576371713',
        type: MediaType.video,
        url:
            'https://video.twimg.com/ext_tw_video/1569048506576371713/pu/vid/480x852/gskUD1UAGF6yo58i.mp4?tag=12',
      )
    ],
    publicMetrics: const PublicMetrics(
      likes: 4041,
      retweets: 631,
      replies: 128,
    ),
  );

  static final List<Tweet> widgetbookHomeFeed = [
    timSneathTweet,
    roaaVikingsTweet,
    fourPhotosTweet,
    gifTweet,
    singlePhotoTweet,
    threePhotosTweet,
  ];
}
