import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// App drawer widget
class AppDrawer extends StatelessWidget {
  /// Creates App drawer widget
  const AppDrawer({
    super.key,
    required this.user,
  });

  /// The logged in user
  final User user;

  /// List of drawer menu items with localized labels
  List<MenuListItemData> getDrawerMenuItems(BuildContext context) {
    return [
      MenuListItemData(
        label: AppLocalizations.of(context)!.profile,
        icon: Icons.account_circle,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.lists,
        icon: Icons.newspaper,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.notifications,
        icon: Icons.notification_add,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final listItems = getDrawerMenuItems(context);

    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: BorderDirectional(
            end: BorderSide(color: Theme.of(context).dividerColor),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Avatar(imageUrl: user.avatarUrl),
                    const AppGap.sm(),
                    DisplayName(user: user),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      ...List.generate(
                        listItems.length,
                        (index) => MenuListItem(
                          icon: listItems[index].icon,
                          label: listItems[index].label,
                          onTap: () {},
                        ),
                      ),
                      const Divider(height: 20),
                      MenuListItem(
                        label: AppLocalizations.of(context)!.settingsAndPrivacy,
                        icon: Icons.settings,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
