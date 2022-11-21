import 'package:flutter/cupertino.dart';

/// Data model for a menu item
///
/// e.g. Sidebar, Drawer, ..etc.
class MenuListItemData {
  /// Creates data model for a menu item
  const MenuListItemData({
    required this.label,
    this.icon,
  });

  /// Item label
  final String label;

  /// Item icon
  final IconData? icon;
}
