import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

/// List of app color options that can be used with knobs
const List<Option<Color?>> colorOptions = [
  Option(
    label: 'Default',
    value: null,
  ),
  Option(
    label: 'Text Light',
    value: AppColors.textLight,
  ),
  Option(
    label: 'White',
    value: AppColors.whiteLight,
  ),
  Option(
    label: 'Primary',
    value: AppColors.primary,
  ),
  Option(
    label: 'Secondary',
    value: AppColors.secondary,
  ),
  Option(
    label: 'Success',
    value: AppColors.success,
  ),
  Option(
    label: 'Pink',
    value: AppColors.pink,
  ),
];

/// Predefined options knob for a tweet date
DateTime getTweetDateOption(BuildContext context) {
  return context.knobs.options<DateTime>(
    label: 'Date',
    description: "The date should be a timeago string if it's "
        'less than 24 hours ago, and it should '
        "include the year only if it's different "
        'than the one we are currently in',
    options: [
      Option(
        label: '12 hours ago',
        value: DateTime.now().subtract(
          const Duration(hours: 12),
        ),
      ),
      Option(
        label: '2 days ago',
        value: DateTime.now().subtract(
          const Duration(days: 2),
        ),
      ),
      Option(
        label: '2 years ago',
        value: DateTime.now().subtract(
          const Duration(days: 365 * 3),
        ),
      ),
    ],
  );
}

