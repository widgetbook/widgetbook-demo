import 'package:flutter/cupertino.dart';

/// Data model for a navigation bar item
class NavigationBarItemData {
  /// Creates data model for a navigation bar item
  NavigationBarItemData({
    required this.type,
    required this.icon,
    required this.activeIcon,
  });

  /// Type of item
  final NavigationBarItemType type;

  /// Item icon
  final IconData icon;

  /// Item active icon
  final IconData activeIcon;
}

enum NavigationBarItemType {
  home,
  search,
  notifications,
  messages,
}
