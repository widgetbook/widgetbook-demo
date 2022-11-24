import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Sidebar widget for tablet and web/desktop views
class AppSidebar extends StatelessWidget {
  /// Creates sidebar widget for tablet and web/desktop views
  const AppSidebar({
    super.key,
    this.isExpanded = true,
    required this.user,
  });

  /// Whether the sidebar is expanded
  ///
  /// Mainly `true` for web/desktop and `false` for tablet view
  final bool isExpanded;

  /// Logged in user
  final User user;

  /// List of drawer menu items with localized labels
  List<MenuListItemData> getSidebarMenuItems(BuildContext context) {
    return [
      MenuListItemData(
        label: AppLocalizations.of(context)!.home,
        icon: TwitterIcons.home,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.explore,
        icon: TwitterIcons.hash,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.notifications,
        icon: TwitterIcons.bell,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.messages,
        icon: TwitterIcons.mail,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.bookmarks,
        icon: TwitterIcons.bookmark,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.profile,
        icon: TwitterIcons.user,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.more,
        icon: TwitterIcons.more,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final sidebarItems = getSidebarMenuItems(context);
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment:
            isExpanded ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: isExpanded
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(100),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: TwitterLogo(size: 30),
                  ),
                ),
                ...List.generate(
                  sidebarItems.length,
                  (index) => MenuListItem(
                    icon: sidebarItems[index].icon,
                    label: isExpanded ? sidebarItems[index].label : null,
                    isWeb: true,
                    onTap: () {},
                  ),
                ),
                const SizedBox(height: 20),
                AppElevatedButton.primary(
                  mainAxisSize:
                      isExpanded ? MainAxisSize.max : MainAxisSize.min,
                  label:
                      isExpanded ? AppLocalizations.of(context)!.tweet : null,
                  icon: isExpanded ? null : TwitterIcons.add_feather_fill,
                  onPressed: () {},
                  height: 56,
                )
              ],
            ),
          ),
          UserInfo(
            user,
            isExpanded: isExpanded,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
