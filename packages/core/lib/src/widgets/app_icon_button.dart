import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Icon buttons with customizable hover colors
///
/// Wrapped with a [Theme] with [NoSplash.splashFactory] to remove
/// splash effect
/// Also includes a [MouseRegion] widget to change icon color on mouse hover
class AppIconButton extends StatefulWidget {
  /// Creates a new instance of [AppIconButton]
  const AppIconButton({
    super.key,
    this.size = 20,
    this.hoverColor = AppColors.primary,
    this.color,
    this.activeColor = AppColors.primary,
    required this.icon,
    this.activeIcon,
    this.onPressed,
    this.isActive = false,
  });

  /// Size of the icon
  ///
  /// Also determines the hover circle radius
  final double size;

  /// Hover color of the icon button
  ///
  /// Applied to icon with full opacity
  /// and to [IconButton.hoverColor] & [IconButton.highlightColor]
  /// with 0.1 opacity
  ///
  /// Defaults to [AppColors.primary]
  final Color hoverColor;

  /// Icon color when not hovered and not active
  ///
  /// Defaults to [AppColors.textLight]
  /// Todo: change for dark theme
  final Color? color;

  /// Color used when [isActive] is true
  ///
  /// Defaults to [AppColors.primary]
  final Color activeColor;

  /// The icon widget
  final Widget icon;

  /// Optional icon widget for when [isActive] is true
  final Widget? activeIcon;

  /// Callback for [IconButton.onPressed]
  final VoidCallback? onPressed;

  /// If the icon button is in active state,
  /// the [activeIcon] & [activeColor] are used
  final bool isActive;

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final splashRadius = widget.size / 2 + widget.size * 0.7;
    return SizedBox(
      width: splashRadius * 2,
      height: splashRadius * 2,
      child: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory,
        ),
        child: MouseRegion(
          onEnter: (PointerEnterEvent event) {
            setState(() {
              _isHovered = true;
            });
          },
          onExit: (PointerExitEvent event) {
            setState(() {
              _isHovered = false;
            });
          },
          child: IconButton(
            onPressed: widget.onPressed,
            splashRadius: splashRadius,
            iconSize: widget.size,
            highlightColor: widget.hoverColor.withOpacity(0.1),
            hoverColor: widget.hoverColor.withOpacity(0.1),
            padding: const EdgeInsets.all(10),
            color: _isHovered
                ? widget.hoverColor
                : widget.isActive
                    ? widget.activeColor
                    : widget.color,
            icon: widget.isActive && widget.activeIcon != null
                ? widget.activeIcon!
                : widget.icon,
          ),
        ),
      ),
    );
  }
}
