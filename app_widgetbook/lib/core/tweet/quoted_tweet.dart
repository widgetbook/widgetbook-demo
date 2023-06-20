import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Large Media', type: QuotedTweet)
Widget quotedTweetLargeMediaUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: QuotedTweet(
      tweet: Tweet(
        rawText: context.knobs.string(
          label: 'Tweet Text',
          initialValue: 'Lorem ipsum dolor sit amit #hashtag @mention',
        ),
        author: DummyUsers.widgetbook,
        media: getMediaOptions(context),
        createdAt: getTweetDateOption(context),
        source: TweetSource.iPhone,
      ),
      isThread: context.knobs.boolean(
        label: 'Is Thread',
        initialValue: true,
      ),
    ),
  );
}

@UseCase(name: 'Thumbnail Media', type: QuotedTweet)
Widget quotedTweetThumbnailMediaUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: QuotedTweet(
      tweet: Tweet(
        rawText: context.knobs.string(
          label: 'Tweet Text',
          initialValue: 'Lorem ipsum dolor sit amit #hashtag @mention',
        ),
        author: DummyUsers.widgetbook,
        media: getMediaOptions(context),
        createdAt: getTweetDateOption(context),
        source: TweetSource.iPhone,
      ),
      isLargeMedia: false,
      isThread: context.knobs.boolean(
        label: 'Is Thread',
        initialValue: true,
      ),
    ),
  );
}
