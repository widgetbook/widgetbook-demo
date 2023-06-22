import 'package:app_widgetbook/dummy_data/dummy_tweets.dart';
import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: ExpandedTweetInfo)
Widget detailedTweetInfoDefaultUseCase(BuildContext context) {
  return ExpandedTweetInfo(
    tweet: DummyTweets.fourPhotosTweet.copyWith(
      source: context.knobs.list<TweetSource>(
        label: 'Tweet Source',
        options: TweetSource.values,
        labelBuilder: (value) => value.toText(),
      ),
      createdAt: getTweetDateOption(context),
    ),
  );
}
