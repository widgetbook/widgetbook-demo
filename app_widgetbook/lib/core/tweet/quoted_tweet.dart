import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(
  name: 'Large Media',
  type: QuotedTweet,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?type=design&node-id=260-7146&t=aXDXkBsaFxCTxdac-4',
)
Widget quotedTweetLargeMediaUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: QuotedTweet(
      tweet: Tweet(
        rawText: context.knobs.text(
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

@WidgetbookUseCase(
  name: 'Thumbnail Media',
  type: QuotedTweet,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?type=design&node-id=261-7252&t=aXDXkBsaFxCTxdac-4',
)
Widget quotedTweetThumbnailMediaUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: QuotedTweet(
      tweet: Tweet(
        rawText: context.knobs.text(
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
