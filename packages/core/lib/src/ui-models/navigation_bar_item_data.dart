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

/// Type of Navigation Bar Item
enum NavigationBarItemType {
  /// Home Navigation bar item
  home,
  /// Search Navigation bar item
  search,
  /// Notifications Navigation bar item
  notifications,
  /// Messages Navigation bar item
  messages,
}
