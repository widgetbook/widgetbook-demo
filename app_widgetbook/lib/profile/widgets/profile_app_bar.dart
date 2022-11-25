import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: ProfileAppBar)
Widget profileAppBarDefaultUseCase(BuildContext context) {
  return CustomScrollView(
    slivers: [
      ProfileAppBar(
        user: context.knobs.options(
          label: 'User',
          options: const [
            Option(
              label: 'Widgetbook',
              value: DummyUsers.widgetbook,
            ),
            Option(
              label: 'Roaa',
              value: DummyUsers.roaakdm,
            ),
          ],
        ),
      ),
    ],
  );
}
