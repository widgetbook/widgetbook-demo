import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart' hide MenuItem;
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: MenuItem)
Widget menuItemDefaultUseCase(BuildContext context) {
  return MenuItem(
    onTap: () {},
    isActive: context.knobs.boolean(label: 'Active'),
    label: context.knobs.text(
      label: 'Label',
      initialValue: 'Home',
    ),
    icon: context.knobs.options(
      label: 'Icon',
      options: iconOptions,
    ),
  );
}
