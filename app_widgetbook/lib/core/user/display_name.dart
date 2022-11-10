import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: DisplayName)
Widget displayNameDefaultUseCase(BuildContext context) {
  return DisplayName(
    user: User(
      displayName: context.knobs.text(
        label: 'Value',
        description: 'Enter display name',
        initialValue: 'John Doe',
      ),
      id: '',
      username: '',
    ),
  );
}

@WidgetbookUseCase(name: 'Active', type: DisplayName)
Widget displayNameActiveUseCase(BuildContext context) {
  return DisplayName.active(
    user: User(
      displayName: context.knobs.text(
        label: 'Value',
        description: 'Enter display name',
        initialValue: 'John Doe',
      ),
      id: '',
      username: '',
    ),
  );
}
