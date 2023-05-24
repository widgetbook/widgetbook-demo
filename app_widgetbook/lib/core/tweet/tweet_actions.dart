import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: TweetActions,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?type=design&node-id=210-1162&t=CUcQdGSYqsHyX5r8-4',
)
Widget tweetActionsDefaultUseCase(BuildContext context) {
  return TweetActions(
    hideValues: context.knobs.boolean(label: 'Hide Values'),
    publicMetrics: PublicMetrics(
      replies: context.knobs.double
          .slider(
            label: 'Replies',
            min: 0,
            max: 25000,
            initialValue: 15,
            divisions: 25000 ~/ 50,
          )
          .toInt(),
      retweets: context.knobs.double
          .slider(
            label: 'Retweets',
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
    onSharePressed: () {},
    onRepliesPressed: () {},
  );
}
