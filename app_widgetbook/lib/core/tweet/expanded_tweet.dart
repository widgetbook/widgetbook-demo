import 'package:app_widgetbook/dummy_data/dummy_tweets.dart';
import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(
  name: 'Default',
  type: ExpandedTweet,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=215%3A1153&t=HvlZdc2vGkHtmtHU-4',
)
Widget expandedTweetDefaultUseCase(BuildContext context) {
  return ExpandedTweet(
    tweet: Tweet(
      rawText: context.knobs.text(
        label: 'Tweet Text',
        initialValue: 'Lorem ipsum dolor sit amit #hashtag @mention',
      ),
      source: context.knobs.options<TweetSource>(
        label: 'Tweet Source',
        options: TweetSource.values,
        labelBuilder: (value) => value.toText(),
      ),
      inReplyToUser:
          context.knobs.boolean(label: 'Is Reply', initialValue: true)
              ? DummyUsers.roaakdm
              : null,
      author: DummyUsers.widgetbook,
      media: getMediaOptions(context),
      publicMetrics: PublicMetrics(
        quoteTweets: context.knobs
            .slider(
              label: 'Quote Tweets',
              min: 0,
              max: 2500,
              initialValue: 0,
              divisions: 2500 ~/ 50,
            )
            .toInt(),
        retweets: context.knobs
            .slider(
              label: 'Retweets',
              min: 0,
              max: 2500,
              initialValue: 15,
              divisions: 2500 ~/ 50,
            )
            .toInt(),
        likes: context.knobs
            .slider(
              label: 'Likes',
              min: 0,
              max: 2500,
              initialValue: 15,
              divisions: 2500 ~/ 50,
            )
            .toInt(),
      ),
      createdAt: getTweetDateOption(context),
    ),
  );
}

@WidgetbookUseCase(
  name: 'Quote Tweet',
  type: ExpandedTweet,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=261%3A7189&t=HvlZdc2vGkHtmtHU-4',
)
Widget expandedTweetQuoteTweetUseCase(BuildContext context) {
  return ExpandedTweet(
    tweet: Tweet(
      rawText: context.knobs.text(
        label: 'Tweet Text',
        initialValue: 'Lorem ipsum dolor sit amit #hashtag @mention',
      ),
      source: context.knobs.options<TweetSource>(
        label: 'Tweet Source',
        options: TweetSource.values,
        labelBuilder: (value) => value.toText(),
      ),
      inReplyToUser:
          context.knobs.boolean(label: 'Is Reply', initialValue: true)
              ? DummyUsers.roaakdm
              : null,
      author: DummyUsers.widgetbook,
      media: getMediaOptions(context),
      quotedTweet: DummyTweets.fourPhotosTweet.copyWith(
        media: getMediaOptions(context, label: 'Quoted Tweet Media'),
        createdAt: getTweetDateOption(context, label: 'Quoted Tweet Date'),
      ),
      publicMetrics: PublicMetrics(
        quoteTweets: context.knobs
            .slider(
              label: 'Quote Tweets',
              min: 0,
              max: 2500,
              initialValue: 0,
              divisions: 2500 ~/ 50,
            )
            .toInt(),
        retweets: context.knobs
            .slider(
              label: 'Retweets',
              min: 0,
              max: 2500,
              initialValue: 15,
              divisions: 2500 ~/ 50,
            )
            .toInt(),
        likes: context.knobs
            .slider(
              label: 'Likes',
              min: 0,
              max: 2500,
              initialValue: 15,
              divisions: 2500 ~/ 50,
            )
            .toInt(),
      ),
      createdAt: getTweetDateOption(context),
    ),
  );
}
