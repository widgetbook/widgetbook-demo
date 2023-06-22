import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: DisplayName)
Widget displayNameDefaultUseCase(BuildContext context) {
  return DisplayName(
    user: User(
      displayName: context.knobs.string(
        label: 'Value',
        description: 'Enter display name',
        initialValue: 'John Doe',
      ),
      id: '',
      username: '',
    ),
  );
}

@UseCase(name: 'Active', type: DisplayName)
Widget displayNameActiveUseCase(BuildContext context) {
  return DisplayName.active(
    user: User(
      displayName: context.knobs.string(
        label: 'Value',
        description: 'Enter display name',
        initialValue: 'John Doe',
      ),
      id: '',
      username: '',
    ),
  );
}
