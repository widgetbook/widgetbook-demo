import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Twitter user's username (handle)
///
/// e.g. @widgetbook_io
class Username extends StatelessWidget {
  /// Creates a new instance of [Username]
  const Username({
    super.key,
    required this.user,
    this.color,
  }) : isActive = false;

  /// Creates a new instance of [Username] with active use case
  ///
  /// An active [Username] widget has primary colored text, underlined when
  /// hovered, and allows clicking to navigate to user's profile page
  const Username.active({
    super.key,
    required this.user,
    this.color,
  }) : isActive = true;

  /// Username value
  final User user;

  /// Optional color for link usernames
  final Color? color;

  /// Whether the username can be clicked to navigate to user's profile
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText2!.copyWith(
          color: color ??
              (isActive
                  ? AppColors.primary
                  : (Theme.of(context).brightness == Brightness.light
                      ? AppColors.textLight
                      : AppColors.whiteLight)),
        );

    if (isActive) {
      return HoverDetector(
        childBuilder: (BuildContext context, bool isHovered) => GestureDetector(
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
      '@${user.username}',
      style: style,
      textDirection: TextDirection.ltr,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
