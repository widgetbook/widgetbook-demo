import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: DisplayName)
Widget displayNameDefaultUseCase(BuildContext context) {
  return DisplayName(
    value: context.knobs.text(
      label: 'Value',
      description: 'Enter display name',
      initialValue: 'John Doe',
    ),
  );
}
