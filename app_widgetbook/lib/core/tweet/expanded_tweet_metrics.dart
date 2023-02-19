import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: ExpandedTweetMetrics)
Widget expandedTweetMetricsDefaultUseCase(BuildContext context) {
  return ExpandedTweetMetrics(
    metrics: PublicMetrics(
      retweets: context.knobs
          .slider(
        label: 'Retweets',
        min: 0,
        max: 25000,
        initialValue: 15,
        divisions: 25000 ~/ 50,
      )
          .toInt(),
      quoteTweets: context.knobs
          .slider(
        label: 'Quote Tweets',
        min: 0,
        max: 25000,
        initialValue: 15,
        divisions: 25000 ~/ 50,
      )
          .toInt(),
      likes: context.knobs
          .slider(
        label: 'Likes',
        min: 0,
        max: 25000,
        initialValue: 15,
        divisions: 25000 ~/ 50,
      )
          .toInt(),
    ),
  );
}
