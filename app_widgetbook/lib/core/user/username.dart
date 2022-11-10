import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: Username)
Widget usernameDefaultUseCase(BuildContext context) {
  return Username(
    user: User(
      username: context.knobs.text(
        label: 'Value',
        description: 'Enter username (Twitter handle)',
        initialValue: 'johndoe',
      ),
      id: '',
      displayName: '',
    ),
  );
}

@WidgetbookUseCase(name: 'Active', type: Username)
Widget usernameActiveuseCase(BuildContext context) {
  return Username.active(
    user: User(
      username: context.knobs.text(
        label: 'Value',
        description: 'Enter username (Twitter handle)',
        initialValue: 'johndoe',
      ),
      id: '',
      displayName: '',
    ),
  );
}
