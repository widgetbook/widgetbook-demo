import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: DetailedTweetInfo)
Widget detailedTweetInfoDefaultUseCase(BuildContext context) {
  return DetailedTweetInfo(
    tweetSource: context.knobs.options<TweetSource>(
      label: 'Tweet Source',
      options: TweetSource.values
          .map(
            (source) => Option(
              label: source.getText(context),
              value: source,
            ),
          )
          .toList(),
    ),
    tweetDate: getTweetDateOption(context),
  );
}
