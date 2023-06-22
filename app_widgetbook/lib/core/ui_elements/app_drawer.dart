import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: AppDrawer)
Widget appDrawerDefaultUseCase(BuildContext context) {
  return const AppDrawer(
    user: DummyUsers.widgetbook,
  );
}
