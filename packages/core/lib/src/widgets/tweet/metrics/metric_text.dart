import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Tweet metric text widget
///
/// e.g. Likes, comments, retweets, ..etc
class MetricText extends StatelessWidget {
  /// Creates a new instance of [MetricText]
  const MetricText({
    super.key,
    this.value = 0,
    this.isActive = false,
    this.activeColor = AppColors.primary,
    this.textStyle,
  });

  /// Metric value
  final int value;

  /// Metric incremented by user
  final bool isActive;

  /// Color of the text when active
  final Color activeColor;

  /// Text style of the metric value
  final TextStyle? textStyle;

  /// Get formatted value based on digit count
  ///
  /// If the value is 4 digits or less, only decimal commas are added
  /// Otherwise the value is compacted (12,100 => 12.1K)
  String getFormattedValue(int value, String locale) {
    return value.toString().length > 4
        ? NumberFormat.compact(locale: locale).format(value)
        : NumberFormat.decimalPattern(locale).format(value);
  }

  @override
  Widget build(BuildContext context) {
    final nextValue = value + 1;
    final locale = Localizations.localeOf(context).languageCode;

    return ClipRect(
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          AnimatedSlide(
            duration: const Duration(milliseconds: 300),
            offset: Offset(0, isActive ? -1 : 0),
            curve: Curves.easeInOut,
            child: Opacity(
              opacity: value == 0 ? 0 : 1,
              child: Text(
                getFormattedValue(value, locale),
                style: textStyle ?? Theme.of(context).textTheme.caption,
              ),
            ),
          ),
          AnimatedSlide(
            duration: const Duration(milliseconds: 300),
            offset: Offset(0, isActive ? 0 : 1),
            curve: Curves.easeInOut,
            child: Text(
              getFormattedValue(nextValue, locale),
              style: textStyle ??
                  Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: activeColor),
            ),
          ),
        ],
      ),
    );
  }
}
