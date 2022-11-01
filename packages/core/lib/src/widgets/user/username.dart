import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Twitter user's username (handle)
///
/// e.g. @widgetbook_io
class Username extends StatelessWidget {
  /// Creates a new instance of [Username]
  const Username({
    super.key,
    required this.value,
    this.color,
  });

  /// Username value
  final String value;

  /// Optional color for link usernames
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      '@$value',
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            color: color ??
                (Theme.of(context).brightness == Brightness.light
                    ? AppColors.textLight
                    : AppColors.whiteLight),
          ),
    );
  }
}
