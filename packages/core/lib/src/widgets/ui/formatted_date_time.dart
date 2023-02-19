import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

/// Helper widget to render formatted date and/or time with:
/// * text style and localization set up
/// * option to include the time with 12/24-hour formats
/// * timeAgo formatted date option
/// * option to include/remove year
///
/// Default set up creates a date-only string
class FormattedDateTime extends StatelessWidget {
  /// Creates a new instance of [FormattedDateTime]
  const FormattedDateTime({
    super.key,
    required this.date,
    this.isTimeOnly = false,
    this.isDateOnly = true,
    this.isTimeAgo = false,
    this.isTime12h = true,
    this.hasYear = true,
  });

  /// The date value to format
  final DateTime date;

  /// If the formatted string is only time
  ///
  /// Defaults to `false`
  /// when both [isTimeOnly] & [isDateOnly] are `false`,
  /// the text is the time with 12-h format, then the date, separated
  /// by an interpunct `·`
  final bool isTimeOnly;

  /// If the formatted string is only date
  ///
  /// Defaults to `true`
  /// when both [isTimeOnly] & [isDateOnly] are `false`,
  /// the text is the time with 12-h format, then the date, separated
  /// by an interpunct `·`
  final bool isDateOnly;

  /// If this date should be formatted using the timeAgo package
  final bool isTimeAgo;

  /// If the time is 12-hour format
  ///
  /// Defaults to `true`
  final bool isTime12h;

  /// Whether the formatted date string includes the year
  final bool hasYear;

  @override
  Widget build(BuildContext context) {
    final localeCode = Localizations.localeOf(context).languageCode;

    final dateString = DateFormat(
      hasYear ? 'yMMMd' : 'MMMd',
      localeCode,
    ).format(date);

    final timeString = DateFormat(
      isTime12h ? 'hh:mm a' : 'HH:mm',
      localeCode,
    ).format(date);

    return Text(
      isTimeAgo
          ? timeago.format(
              date,
              locale: '${localeCode}_short',
            )
          : isTimeOnly
              ? timeString
              : isDateOnly
                  ? dateString
                  : '$timeString · $dateString',
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}
