import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Tweet header widget with
/// Display Name, username, tweet date, and more info icon button
class TweetHeader extends StatelessWidget {
  /// Creates a new instance of [TweetHeader]
  const TweetHeader({
    super.key,
    required this.author,
    required this.tweetDate,
    this.hasInfoIconButton = true,
  });

  /// Tweet user
  final User author;

  /// Tweet date
  final DateTime tweetDate;

  /// Whether this widget has an info icon button
  final bool hasInfoIconButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Flexible(
                child: DisplayName.active(user: author),
              ),
              const AppGap.xs(),
              Flexible(
                child: Username(user: author),
              ),
              const Text(' · '),
              TweetDate(date: tweetDate),
            ],
          ),
        ),
        if (hasInfoIconButton)
          AppIconButton(
            onPressed: () {},
            icon: const Icon(TwitterIcons.info),
            size: 14,
          ),
      ],
    );
  }
}
