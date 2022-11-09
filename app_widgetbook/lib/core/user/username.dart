import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: Username)
Widget usernameDefaultUseCase(BuildContext context) {
  return Username(
    value: context.knobs.text(
      label: 'Value',
      description: 'Enter username (Twitter handle)',
      initialValue: 'johndoe',
    ),
  );
}
