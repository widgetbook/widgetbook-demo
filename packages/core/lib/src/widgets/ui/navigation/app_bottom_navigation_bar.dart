import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// App Bottom Navigation bar widget
class AppBottomNavigationBar extends StatelessWidget {
  /// Creates App Bottom Navigation bar widget
  const AppBottomNavigationBar({
    super.key,
    required this.onItemChanged,
    required this.currentIndex,
  });

  final int currentIndex;

  final ValueChanged<int> onItemChanged;

  /// List of bottom navigation bar items
  static final List<NavigationBarItemData> items = [
    NavigationBarItemData(
      type: NavigationBarItemType.home,
      icon: TwitterIcons.home,
      activeIcon: TwitterIcons.home_fill,
    ),
    NavigationBarItemData(
      type: NavigationBarItemType.search,
      icon: TwitterIcons.search,
      activeIcon: TwitterIcons.search_fill,
    ),
    NavigationBarItemData(
      type: NavigationBarItemType.notifications,
      icon: TwitterIcons.bell,
      activeIcon: TwitterIcons.bell_fill,
    ),
    NavigationBarItemData(
      type: NavigationBarItemType.messages,
      icon: TwitterIcons.mail,
      activeIcon: TwitterIcons.mail_fill,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Theme.of(context).dividerColor, width: 0.5),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onItemChanged,
        items: List.generate(
          items.length,
          (i) => BottomNavigationBarItem(
            icon: Icon(items[i].icon),
            activeIcon: Icon(items[i].activeIcon),
            label: 'Home',
          ),
        ),
      ),
    );
  }
}
