import 'package:core/core.dart';

class DummyTweets {
  static final Tweet tweet = Tweet(
    source: TweetSource.iPhone,
    rawText: 'Learn more about #Widgetbook and how you can speed '
        'up your app #development process on #YouTube',
    author: const User(
      id: '0',
      username: 'widgetbook_io',
      displayName: 'Widgetbook',
      avatarUrl:
          'https://pbs.twimg.com/profile_images/1446021572960133120/UZYljO51_400x400.jpg',
    ),
    createdAt: DateTime(2021, 12, 24),
    media: [],
    entities: const TweetEntities(
      hashtags: [
        TweetHashtag(start: 17, end: 28, tag: 'Widgetbook'),
        TweetHashtag(start: 63, end: 75, tag: 'development'),
      ],
    ),
  );
}
