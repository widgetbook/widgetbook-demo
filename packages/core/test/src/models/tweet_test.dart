import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test-utils/dummy_users.dart';

void main() {
  test('Can correctly read mentions & hashtags from raw tweet text', () {
    final tweet = Tweet(
      rawText: 'Learn more about @widgetbook_io and how you can speed up '
          'your app #development process on #YouTube ',
      author: DummyUsers.widgetbook,
      source: TweetSource.iPhone,
      createdAt: DateTime(2021, 12, 24),
      entities: TweetEntities(
        hashtags: const [
          TweetHashtag(start: 63, end: 75, tag: 'development'),
          TweetHashtag(start: 87, end: 95, tag: 'YouTube'),
        ],
        mentions: [
          TweetMention(
            start: 17,
            end: 28,
            username: DummyUsers.widgetbook.username,
            id: DummyUsers.widgetbook.id,
          ),
        ],
      ),
    );
    const parsedText = 'Learn more about [@widgetbook_io](user_lookup) and '
        'how you can speed up your app [#development](hashtag_lookup) '
        'process on [#YouTube](hashtag_lookup) ';

    expect(tweet.text, parsedText);
  });
}
