import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Widget to display the tweet's date,
/// usually added next to the username
///
/// This has a couple of characteristics:
/// * The date is a timeago string if it's less than 24 hours ago
/// * The date includes the year if it's in a year different than
///   the one we are currently in
class TweetDate extends StatelessWidget {
  /// Creates a new instance of [TweetDate]
  const TweetDate({
    super.key,
    required this.date,
  });

  /// The date of the tweet
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return FormattedDateTime(
      date: date,
      isTimeAgo: date.isAfter(
        DateTime.now().subtract(
          const Duration(hours: 24),
        ),
      ),
      hasYear: date.year != DateTime.now().year,
    );
  }
}
