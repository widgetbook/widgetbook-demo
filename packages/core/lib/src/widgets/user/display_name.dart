import 'package:flutter/material.dart';

/// Twitter user's display name
class DisplayName extends StatelessWidget {
  /// Creates a new instance of [DisplayName]
  const DisplayName({
    super.key,
    required this.value,
  });

  /// Display name value
  final String value;

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
