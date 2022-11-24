import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option, Device;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: DrawerPageWrapper)
Widget drawerPageWrapperDefaultUseCase(BuildContext context) {
  return DrawerPageWrapper(
    // Todo: remove these values when `MediaQuery` issue is resolved
    // now the width and height here are the hardcoded values of an iPhone 12/13
    width: 390 + DrawerUtils.width,
    height: 844,
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
