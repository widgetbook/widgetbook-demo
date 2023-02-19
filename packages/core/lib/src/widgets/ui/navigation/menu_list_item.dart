import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Widget for an item in a menu
///
/// Used in the drawer for mobile and in the sidebar for tablet/desktop
class MenuListItem extends StatelessWidget {
  /// Creates a widget for an item in a menu
  const MenuListItem({
    super.key,
    this.icon,
    this.label,
    this.onTap,
    this.isActive = false,
    this.isLargeScreen = false,
  });

  /// Icon data of the menu item
  final IconData? icon;

  /// Label of the menu item
  final String? label;

  /// onTap callback for the menu item
  final VoidCallback? onTap;

  /// Whether the menu item is active
  final bool isActive;

  /// Whether this list item is
  final bool isLargeScreen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: isLargeScreen ? BorderRadius.circular(40) : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Row(
          mainAxisSize: isLargeScreen ? MainAxisSize.min : MainAxisSize.max,
          children: [
            if (icon != null)
              Padding(
                padding: EdgeInsetsDirectional.only(
                  end: label == null ? 0 : 20,
                ),
                child: Icon(
                  icon,
                  size: 24,
                  color: isActive
                      ? AppColors.primary
                      : Theme.of(context).isDark
                          ? AppColors.white
                          : AppColors.secondary,
                ),
              ),
            if (label != null)
              Text(
                label!,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: isActive ? AppColors.primary : null,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
