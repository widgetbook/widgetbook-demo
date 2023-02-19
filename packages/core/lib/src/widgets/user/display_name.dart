import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Twitter user's display name
class DisplayName extends StatelessWidget {
  /// Creates a new instance of [DisplayName]
  const DisplayName({
    super.key,
    required this.user,
  }) : isActive = false;

  /// Creates a new instance of [DisplayName] with active use case
  ///
  /// An active [DisplayName] widget has underlined text when
  /// hovered, and allows clicking to navigate to user's profile page
  const DisplayName.active({
    super.key,
    required this.user,
  }) : isActive = true;

  /// Display name value
  final User user;

  /// Whether the username can be clicked to navigate to user's profile
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return HoverDetector(
        childBuilder: (_, bool isHovered) => GestureDetector(
          onTap: () {
            // Todo: navigate to user profile page
          },
          child: _buildTextWidget(
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  decoration: isHovered
                      ? TextDecoration.underline
                      : TextDecoration.none,
                ),
          ),
        ),
      );
    } else {
      return _buildTextWidget(
        style: Theme.of(context).textTheme.bodyLarge!,
      );
    }
  }

  Widget _buildTextWidget({required TextStyle style}) {
    return Text(
      user.displayName,
      style: style,
      textDirection: TextDirection.ltr,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
