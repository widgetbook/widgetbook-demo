import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Widget with a user's Avatar, Display name, and info icon when expanded
/// Avatar only when collapsed
class UserInfo extends StatelessWidget {
  /// Creates a new instance of [UserInfo]
  const UserInfo(
    this.user, {
    super.key,
    this.onTap,
    this.isExpanded = true,
  });

  /// User data
  final User user;

  /// On tap callback
  final VoidCallback? onTap;

  /// Whether the widget is expanded
  ///
  /// When `true`, user display name, username and info icon will appear
  /// When `false`, only avatar is shown
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(100),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Avatar(
              imageUrl: user.avatarUrl,
            ),
            if (isExpanded)
              Expanded(
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DisplayName(user: user),
                          Username(user: user),
                        ],
                      ),
                    ),
                    const Icon(TwitterIcons.info, size: 15),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
