import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: TweetAnnotation)
Widget tweetAnnotationDefaultUseCase(BuildContext context) {
  final type = context.knobs.options<TweetAnnotationType>(
    label: 'Type',
    options: TweetAnnotationType.values
        .map(
          (value) => Option(
            label: value.name.toUpperCase(),
            value: value,
          ),
        )
        .toList(),
  );
  return TweetAnnotation(
    type: type,
    user: type.hasUser
        ? context.knobs.text(
            label: 'User',
            initialValue: 'John Doe',
          )
        : null,
  );
}
