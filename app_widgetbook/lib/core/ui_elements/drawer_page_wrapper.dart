import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: DrawerPageWrapper)
Widget drawerPageWrapperDefaultUseCase(BuildContext context) {
  return DrawerPageWrapper(
    user: DummyUsers.widgetbook,
    appBarTitle: Text(
      context.knobs.text(
        label: 'AppBar Title',
        initialValue: 'Home',
      ),
    ),
    body: Container(),
  );
}
