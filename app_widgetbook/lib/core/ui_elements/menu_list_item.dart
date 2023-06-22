import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Mobile', type: MenuListItem)
Widget menuItemDefaultUseCase(BuildContext context) {
  return MenuListItem(
    onTap: () {},
    isActive: context.knobs.boolean(label: 'Active'),
    label: context.knobs.string(
      label: 'Label',
      initialValue: 'Home',
    ),
    icon: context.knobs.list(
      label: 'Icon',
      options: iconOptions,
    ),
  );
}

@UseCase(name: 'Web', type: MenuListItem)
Widget menuListItemWebUseCase(BuildContext context) {
  final hasLabel = context.knobs.boolean(
    label: 'Has Label',
    initialValue: true,
  );

  return MenuListItem(
    onTap: () {},
    isLargeScreen: true,
    isActive: context.knobs.boolean(label: 'Active'),
    label: hasLabel
        ? context.knobs.string(
            label: 'Label',
            initialValue: 'Home',
          )
        : null,
    icon: context.knobs.list(
      label: 'Icon',
      options: iconOptions,
    ),
  );
}
