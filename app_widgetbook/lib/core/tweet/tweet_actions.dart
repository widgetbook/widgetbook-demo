import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: TweetActions)
Widget tweetActionsDefaultUseCase(BuildContext context) {
  return TweetActions(
    publicMetrics: PublicMetrics(
      replies: context.knobs
          .slider(
            label: 'Replies',
            min: 0,
            max: 25000,
            initialValue: 15,
            divisions: 25000 ~/ 50,
          )
          .toInt(),
      retweets: context.knobs
          .slider(
            label: 'Retweets',
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
    onSharePressed: () {},
    onRepliesPressed: () {},
  );
}
