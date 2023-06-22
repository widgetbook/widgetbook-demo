import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: Username)
Widget usernameDefaultUseCase(BuildContext context) {
  return Username(
    user: User(
      username: context.knobs.string(
        label: 'Value',
        description: 'Enter username (Twitter handle)',
        initialValue: 'johndoe',
      ),
      id: '',
      displayName: '',
    ),
  );
}

@UseCase(name: 'Active', type: Username)
Widget usernameActiveuseCase(BuildContext context) {
  return Username.active(
    user: User(
      username: context.knobs.string(
        label: 'Value',
        description: 'Enter username (Twitter handle)',
        initialValue: 'johndoe',
      ),
      id: '',
      displayName: '',
    ),
  );
}
