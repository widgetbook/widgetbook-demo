import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: MetricText)
Widget metricTextDefaultUseCase(BuildContext context) {
  return MetricText(
    value: context.knobs
        .slider(
          label: 'Value',
          min: 0,
          max: 25000,
          initialValue: 15,
          divisions: 25000 ~/ 50,
        )
        .toInt(),
    isActive: context.knobs.boolean(
      label: 'Active',
    ),
    activeColor: context.knobs.options(
      label: 'Active Color',
      options: [
        const Option(
          label: 'Primary',
          value: AppColors.primary,
        ),
        const Option(
          label: 'Pink',
          value: AppColors.pink,
        ),
        const Option(
          label: 'Success',
          value: AppColors.success,
        ),
      ],
    ),
  );
}
