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
    required this.label,
    this.onTap,
    this.isActive = false,
  });

  /// Icon data of the menu item
  final IconData? icon;

  /// Label of the menu item
  final String label;

  /// onTap callback for the menu item
  final VoidCallback? onTap;

  /// Whether the menu item is active
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 12),
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
            Text(
              label,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: isActive ? AppColors.primary : null,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
