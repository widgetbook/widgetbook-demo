import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: UserInfo)
Widget userInfoDefaultUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: UserInfo(
      DummyUsers.widgetbook,
      isExpanded: context.knobs.boolean(label: 'Expanded', initialValue: true),
      onTap: () {},
    ),
  );
}
