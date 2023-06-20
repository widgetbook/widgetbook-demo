import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: Replies)
Widget repliesDefaultUseCase(BuildContext context) {
  return Replies(
    onPressed: () {},
    metricValue: context.knobs.double
        .slider(
          label: 'Replies Count',
          description: 'Note: replies should be more than'
              ' 0 to be displayed',
          initialValue: 0,
          min: 0,
          divisions: 25000 ~/ 50,
          max: 25000,
        )
        .toInt(),
  );
}
