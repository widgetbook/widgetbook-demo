import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// Default use case of the [AppIconButton] widget
@WidgetbookUseCase(name: 'Default', type: AppIconButton)
Widget appIconButtonDefaultUseCase(BuildContext context) {
  return AppIconButton(
    onPressed: () {},
    icon: const Icon(TwitterIcons.heart),
    isActive: context.knobs.boolean(label: 'Active'),
    color: context.knobs.options<Color?>(
      label: 'Color',
      description: 'Icon color for inactive and non-hovered'
          ' states (defaults to Text Light color)',
      options: colorOptions,
    ),
    activeColor: context.knobs.options<Color?>(
          label: 'Active Color',
          description: 'Icon color for active state'
              ' (defaults to Primary color)',
          options: colorOptions,
        ) ??
        AppColors.primary,
    hoverColor: context.knobs.options<Color?>(
          label: 'Hover Color',
          description: 'Icon & highlight color for hover state'
              ' (defaults to Primary color)',
          options: colorOptions,
        ) ??
        AppColors.primary,
    size: context.knobs.slider(
      label: 'Icon Size',
      min: 15,
      max: 50,
      divisions: 50 - 15,
      initialValue: 20,
    ),
  );
}
