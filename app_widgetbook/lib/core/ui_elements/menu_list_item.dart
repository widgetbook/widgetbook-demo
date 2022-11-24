import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Mobile', type: MenuListItem)
Widget menuItemDefaultUseCase(BuildContext context) {
  return MenuListItem(
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

@WidgetbookUseCase(name: 'Web', type: MenuListItem)
Widget menuListItemWebUseCase(BuildContext context) {
  bool hasLabel = context.knobs.boolean(
    label: 'Has Label',
    initialValue: true,
  );

  return MenuListItem(
    onTap: () {},
    isWeb: true,
    isActive: context.knobs.boolean(label: 'Active'),
    label: hasLabel
        ? context.knobs.text(
            label: 'Label',
            initialValue: 'Home',
          )
        : null,
    icon: context.knobs.options(
      label: 'Icon',
      options: iconOptions,
    ),
  );
}
