import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Component for a user's follows & following count
class UserFollows extends StatelessWidget {
  /// Creates component for a user's follows & following count
  const UserFollows(
    this.user, {
    super.key,
    this.isSmall = false,
  });

  /// User data
  final User user;

  /// Whether this widget has smaller content text size
  final bool isSmall;

  /// Font size for the text
  double get fontSize => isSmall ? 14 : 16;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${user.following}',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: fontSize),
        ),
        const AppGap.xs(),
        Text(
          AppLocalizations.of(context)!.following,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontSize: fontSize),
        ),
        const AppGap.md(),
        Text(
          '${user.following}',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: fontSize),
        ),
        const AppGap.xs(),
        Text(
          AppLocalizations.of(context)!.followers,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontSize: fontSize),
        ),
      ],
    );
  }
}
