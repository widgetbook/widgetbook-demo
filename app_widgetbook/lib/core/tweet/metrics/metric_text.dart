import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: MetricText)
Widget metricTextDefaultUseCase(BuildContext context) {
  return MetricText(
    value: context.knobs.double
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
    activeColor: context.knobs.list(
      label: 'Active Color',
      labelBuilder: (value) => value.value.toRadixString(16),
      options: [
        AppColors.primary,
        AppColors.pink,
        AppColors.success,
      ],
    ),
  );
}
