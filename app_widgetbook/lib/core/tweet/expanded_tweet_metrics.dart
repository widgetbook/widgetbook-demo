import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: ExpandedTweetMetrics)
Widget ExpandedTweetMetricsDefaultUseCase(BuildContext context) {
  return ExpandedTweetMetrics(
    metrics: PublicMetrics(
      retweets: context.knobs.double
          .slider(
            label: 'Retweets',
            min: 0,
            max: 25000,
            initialValue: 15,
            divisions: 25000 ~/ 50,
          )
          .toInt(),
      quoteTweets: context.knobs.double
          .slider(
            label: 'Quote Tweets',
            min: 0,
            max: 25000,
            initialValue: 15,
            divisions: 25000 ~/ 50,
          )
          .toInt(),
      likes: context.knobs.double
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
