import 'package:app_widgetbook/dummy_data/dummy_tweets.dart';
import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: ExpandedTweetInfo)
Widget detailedTweetInfoDefaultUseCase(BuildContext context) {
  return ExpandedTweetInfo(
    tweet: DummyTweets.fourPhotosTweet.copyWith(
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
      createdAt: getTweetDateOption(context),
    ),
  );
}
