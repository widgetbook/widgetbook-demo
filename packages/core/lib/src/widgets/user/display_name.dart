import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Twitter user's display name
class DisplayName extends StatelessWidget {
  /// Creates a new instance of [DisplayName]
  const DisplayName({
    super.key,
    required this.user,
    this.color,
  }) : isActive = false;

  /// Creates a new instance of [DisplayName] with active use case
  ///
  /// An active [DisplayName] widget has underlined text when
  /// hovered, and allows clicking to navigate to user's profile page
  const DisplayName.active({
    super.key,
    required this.user,
    this.color,
  }) : isActive = true;

  /// Display name value
  final User user;

  /// Whether the username can be clicked to navigate to user's profile
  final bool isActive;

  /// Optional fixed color for the text
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText1!.copyWith(
          color: color,
        );
    if (isActive) {
      return HoverDetector(
        childBuilder: (_, bool isHovered) => GestureDetector(
          onTap: () {
            // Todo: navigate to user profile page
          },
          child: _buildTextWidget(
            style: textStyle.copyWith(
              decoration:
                  isHovered ? TextDecoration.underline : TextDecoration.none,
            ),
          ),
        ),
      );
    } else {
      return _buildTextWidget(
        style: textStyle,
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
