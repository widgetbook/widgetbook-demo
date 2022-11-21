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
        icon: TwitterIcons.user,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.lists,
        icon: TwitterIcons.list,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.topics,
        icon: TwitterIcons.topics,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.notifications,
        icon: TwitterIcons.bell,
      ),
      MenuListItemData(
        label: AppLocalizations.of(context)!.bookmarks,
        icon: TwitterIcons.bookmark,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final listItems = getDrawerMenuItems(context);

    return Container(
      width: 320,
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Avatar(imageUrl: user.avatarUrl),
                  const SizedBox(height: 10),
                  DisplayName(user: user),
                  Username(user: user),
                  const SizedBox(height: 20),
                  UserFollows(user),
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
                      onTap: () {},
                    ),
                    MenuListItem(
                      label: AppLocalizations.of(context)!.helpCenter,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).padding.bottom + 20,
                left: 20,
                right: 20,
                top: 5,
              ),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Theme.of(context).dividerColor),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIconButton(
                    onPressed: () {},
                    icon: const Icon(TwitterIcons.bulb),
                  ),
                  AppIconButton(
                    onPressed: () {},
                    icon: const Icon(TwitterIcons.qr),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
