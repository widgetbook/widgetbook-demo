import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: Likes)
Widget likesDefaultUseCase(BuildContext context) {
  return Likes(
    metricValue: context.knobs
        .slider(
          label: 'Likes Count',
          description: 'Note: likes should be more'
              ' than 0 to be displayed',
          initialValue: 0,
          min: 0,
          divisions: 2500 ~/ 5,
          max: 2500,
        )
        .toInt(),
  );
}
