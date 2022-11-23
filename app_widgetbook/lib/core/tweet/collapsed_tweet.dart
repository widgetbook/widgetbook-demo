import 'package:app_widgetbook/dummy_data/dummy_tweets.dart';
import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default Test', type: CollapsedTweet)
Widget test(BuildContext context) {
  return Container();
}

@WidgetbookUseCase(name: 'Default', type: CollapsedTweet)
Widget collapsedTweetDefaultUseCase(BuildContext context) {
  return CollapsedTweet(
    tweet: Tweet(
      rawText: context.knobs.text(
        label: 'Tweet Text',
        initialValue: 'Lorem ipsum dolor sit amit #hashtag @mention test',
      ),
      inReplyToUser:
          context.knobs.boolean(label: 'Is Reply', initialValue: true)
              ? DummyUsers.roaakdm
              : null,
      author: DummyUsers.widgetbook,
      media: getMediaOptions(context),
      createdAt: getTweetDateOption(context),
      publicMetrics: getPublicMetricsOptions(context),
      source: context.knobs.options<TweetSource>(
        label: 'Tweet Source',
        options: TweetSource.values
            .map(
              (source) => Option(
                label: source.toText(),
                value: source,
              ),
            )
            .toList(),
      ),
    ),
    isThread: context.knobs.boolean(
      label: 'Is Thread',
      initialValue: true,
    ),
    onShowThisThread: context.knobs.boolean(
      label: 'Has Show Thread',
      initialValue: true,
    )
        ? () {}
        : null,
    onShowMoreReplies: context.knobs.boolean(
      label: 'Has Show More Replies',
      initialValue: true,
    )
        ? () {}
        : null,
  );
}

@WidgetbookUseCase(name: 'Quote Tweet', type: CollapsedTweet)
Widget collapsedTweetQuoteTweetUseCase(BuildContext context) {
  return CollapsedTweet(
    tweet: Tweet(
      rawText: context.knobs.text(
        label: 'Tweet Text',
        initialValue: 'Lorem ipsum dolor sit amit #hashtag @mention',
      ),
      author: DummyUsers.widgetbook,
      media: getMediaOptions(
        context,
        label: 'Main Tweet Media',
        description: 'Choosing "No Media" should show a large'
            ' media version of the quoted tweet',
      ),
      quotedTweet: DummyTweets.fourPhotosTweet.copyWith(
        media: getMediaOptions(context, label: 'Quoted Tweet Media'),
        createdAt: getTweetDateOption(context, label: 'Quoted Tweet Date'),
      ),
      createdAt: getTweetDateOption(context, label: 'Main Tweet Date'),
      publicMetrics: getPublicMetricsOptions(context),
      source: context.knobs.options<TweetSource>(
        label: 'Tweet Source',
        options: TweetSource.values
            .map(
              (source) => Option(
                label: source.toText(),
                value: source,
              ),
            )
            .toList(),
      ),
    ),
  );
}
