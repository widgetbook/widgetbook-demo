import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: TweetAnnotation)
Widget tweetAnnotationDefaultUseCase(BuildContext context) {
  final type = context.knobs.list<TweetAnnotationType>(
    label: 'Type',
    options: TweetAnnotationType.values,
    labelBuilder: (value) => value.name.toUpperCase(),
  );
  return TweetAnnotation(
    type: type,
    user: type.hasUser
        ? context.knobs.string(
            label: 'User',
            initialValue: 'John Doe',
          )
        : null,
  );
}
