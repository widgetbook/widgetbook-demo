import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: AppSidebar)
Widget appSidebarDefaultUseCase(BuildContext context) {
  return AppSidebar(
    isExpanded: context.knobs.boolean(
      label: 'Expanded',
      initialValue: true,
    ),
    user: DummyUsers.widgetbook,
  );
}
