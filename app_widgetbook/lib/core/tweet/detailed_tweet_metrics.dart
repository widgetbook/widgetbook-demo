import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: DetailedTweetMetrics)
Widget detailedTweetMetricsDefaultUseCase(BuildContext context) {
  return DetailedTweetMetrics(
    retweetsCount: context.knobs
        .slider(
          label: 'Retweets',
          min: 0,
          max: 25000,
          initialValue: 15,
          divisions: 25000 ~/ 50,
        )
        .toInt(),
    quoteTweetsCount: context.knobs
        .slider(
          label: 'Quote Tweets',
          min: 0,
          max: 25000,
          initialValue: 15,
          divisions: 25000 ~/ 50,
        )
        .toInt(),
    likesCount: context.knobs
        .slider(
          label: 'Likes',
          min: 0,
          max: 25000,
          initialValue: 15,
          divisions: 25000 ~/ 50,
        )
        .toInt(),
  );
}
