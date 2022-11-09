import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Date & Time', type: FormattedDateTime)
Widget formattedDateTimeDateAndTimeUseCase(BuildContext context) {
  return FormattedDateTime(
    date: DateTime.now(),
    isDateOnly: false,
    isTime12h: context.knobs.boolean(
      label: '12-Hour Format',
      initialValue: true,
    ),
    hasYear: context.knobs.boolean(
      label: 'Has Year',
      initialValue: true,
    ),
  );
}

@WidgetbookUseCase(name: 'Date', type: FormattedDateTime)
Widget formattedDateTimeDateUseCase(BuildContext context) {
  return FormattedDateTime(
    date: DateTime.now(),
    hasYear: context.knobs.boolean(
      label: 'Has Year',
      initialValue: true,
    ),
  );
}

@WidgetbookUseCase(name: 'Time', type: FormattedDateTime)
Widget formattedDateTimeTimeUseCase(BuildContext context) {
  return FormattedDateTime(
    date: DateTime.now(),
    isTimeOnly: true,
    isTime12h: context.knobs.boolean(
      label: '12-Hour Format',
      initialValue: true,
    ),
  );
}

@WidgetbookUseCase(name: 'TimeAgo', type: FormattedDateTime)
Widget formattedDateTimeTimeAgoUseCase(BuildContext context) {
  return FormattedDateTime(
    date: context.knobs.options<DateTime>(
      label: 'Date',
      options: [
        Option(
          label: 'Now',
          value: DateTime.now(),
        ),
        Option(
          label: '5 Minutes Ago',
          value: DateTime.now().subtract(
            const Duration(minutes: 5),
          ),
        ),
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
          label: '3 months ago',
          value: DateTime.now().subtract(
            const Duration(days: 30 * 3),
          ),
        ),
      ],
    ),
    isTimeAgo: true,
  );
}
