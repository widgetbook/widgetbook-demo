import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
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
      labelBuilder: timeago.format,
      label: 'Date',
      labelBuilder: timeago.format,
      options: [
        DateTime.now(),
        DateTime.now().subtract(
          const Duration(minutes: 5),
        ),
        DateTime.now().subtract(
          const Duration(hours: 12),
        ),
        DateTime.now().subtract(
          const Duration(days: 2),
        ),
        DateTime.now().subtract(
          const Duration(days: 30 * 3),
        ),
      ],
    ),
    isTimeAgo: true,
  );
}
