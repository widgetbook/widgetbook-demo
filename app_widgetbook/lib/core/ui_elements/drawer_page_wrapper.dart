import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: DrawerPageWrapper)
Widget drawerPageWrapperDefaultUseCase(BuildContext context) {
  return MediaQuery(
    data: MediaQuery.of(context).copyWith(
      size: const Size(390, 844),
    ),
    child: DrawerPageWrapper(
      user: DummyUsers.widgetbook,
      appBarTitle: Text(
        context.knobs.string(
          label: 'AppBar Title',
          initialValue: 'Home',
        ),
      ),
      body: Container(),
    ),
  );
}
