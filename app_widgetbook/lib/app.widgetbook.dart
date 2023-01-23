// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'dart:math';
import 'package:app_widgetbook/app.dart';
import 'package:app_widgetbook/auth/components/auth_buttons.dart';
import 'package:app_widgetbook/auth/pages/auth_page.dart';
import 'package:app_widgetbook/auth/pages/login_page.dart';
import 'package:app_widgetbook/auth/pages/password_page.dart';
import 'package:app_widgetbook/core/post/metrics/like_icon_button.dart';
import 'package:app_widgetbook/core/post/metrics/likes.dart';
import 'package:app_widgetbook/core/post/metrics/metric_text.dart';
import 'package:app_widgetbook/core/ui_elements/app_bottom_navigation_bar.dart';
import 'package:app_widgetbook/core/ui_elements/app_drawer.dart';
import 'package:app_widgetbook/core/ui_elements/app_elevated_button.dart';
import 'package:app_widgetbook/core/ui_elements/app_icon_button.dart';
import 'package:app_widgetbook/core/ui_elements/app_sidebar.dart';
import 'package:app_widgetbook/core/ui_elements/drawer_page_wrapper.dart';
import 'package:app_widgetbook/core/ui_elements/formatted_date_time.dart';
import 'package:app_widgetbook/core/ui_elements/menu_list_item.dart';
import 'package:app_widgetbook/core/ui_elements/play_button.dart';
import 'package:app_widgetbook/core/user/avatar.dart';
import 'package:app_widgetbook/core/user/display_name.dart';
import 'package:app_widgetbook/core/user/user_follows.dart';
import 'package:app_widgetbook/core/user/user_info.dart';
import 'package:app_widgetbook/core/user/username.dart';
import 'package:app_widgetbook/home/home_page.dart';
import 'package:auth/src/widgets/auth_buttons.dart';
import 'package:core/core.dart';
import 'package:core/src/l10n/app_localizations_extension.dart';
import 'package:core/src/styles/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(
        name: 'App Widgetbook',
      ),
      addons: [
        CustomThemeAddon<ThemeData>(
          setting: ThemeSetting<ThemeData>(
            themes: [
              WidgetbookTheme(
                name: 'Light',
                data: getLightTheme(),
              ),
              WidgetbookTheme(
                name: 'Dark',
                data: getDarkTheme(),
              ),
            ],
            activeTheme: WidgetbookTheme(
              name: 'Light',
              data: getLightTheme(),
            ),
          ),
        ),
        TextScaleAddon(
          setting: TextScaleSetting(
            textScales: [
              1.0,
              1.5,
              2.0,
            ],
            activeTextScale: 1.0,
          ),
        ),
        LocalizationAddon(
          setting: LocalizationSetting(
            locales: locales,
            activeLocale: locales.first,
            localizationsDelegates: localizationsDelegates,
          ),
        ),
        FrameAddon(
          setting: FrameSetting(
            frames: [
              NoFrame(),
              DefaultDeviceFrame(
                setting: DeviceSetting(
                  devices: [
                    Device(
                      name: 'iPhone 12',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2532.0,
                          width: 1170.0,
                        ),
                        scaleFactor: 3.0,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: 'iPhone 13',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2532.0,
                          width: 1170.0,
                        ),
                        scaleFactor: 3.0,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: '7.9" iPad mini',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1024.0,
                          width: 768.0,
                        ),
                        scaleFactor: 2.0,
                      ),
                      type: DeviceType.tablet,
                    ),
                    Device(
                      name: 'Desktop 1080p',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1080.0,
                          width: 1920.0,
                        ),
                        scaleFactor: 2.0,
                      ),
                      type: DeviceType.desktop,
                    ),
                  ],
                  activeDevice: Device(
                    name: 'iPhone 12',
                    resolution: Resolution(
                      nativeSize: DeviceSize(
                        height: 2532.0,
                        width: 1170.0,
                      ),
                      scaleFactor: 3.0,
                    ),
                    type: DeviceType.mobile,
                  ),
                ),
              ),
              WidgetbookFrame(
                setting: DeviceSetting(
                  devices: [
                    Device(
                      name: 'iPhone 12',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2532.0,
                          width: 1170.0,
                        ),
                        scaleFactor: 3.0,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: 'iPhone 13',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2532.0,
                          width: 1170.0,
                        ),
                        scaleFactor: 3.0,
                      ),
                      type: DeviceType.mobile,
                    ),
                    Device(
                      name: '7.9" iPad mini',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1024.0,
                          width: 768.0,
                        ),
                        scaleFactor: 2.0,
                      ),
                      type: DeviceType.tablet,
                    ),
                    Device(
                      name: 'Desktop 1080p',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1080.0,
                          width: 1920.0,
                        ),
                        scaleFactor: 2.0,
                      ),
                      type: DeviceType.desktop,
                    ),
                  ],
                  activeDevice: Device(
                    name: 'iPhone 12',
                    resolution: Resolution(
                      nativeSize: DeviceSize(
                        height: 2532.0,
                        width: 1170.0,
                      ),
                      scaleFactor: 3.0,
                    ),
                    type: DeviceType.mobile,
                  ),
                ),
              ),
            ],
            activeFrame: NoFrame(),
          ),
        ),
      ],
      directories: [
        WidgetbookFolder(
          name: 'widgets',
          children: [
            WidgetbookComponent(
              name: 'AuthButtons',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => authButtonsDefaultUseCase(context),
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'ui',
              children: [
                WidgetbookComponent(
                  name: 'FormattedDateTime',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Date & Time',
                      builder: (context) =>
                          formattedDateTimeDateAndTimeUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'Date',
                      builder: (context) =>
                          formattedDateTimeDateUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'Time',
                      builder: (context) =>
                          formattedDateTimeTimeUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'TimeAgo',
                      builder: (context) =>
                          formattedDateTimeTimeAgoUseCase(context),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'AppIconButton',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) =>
                          appIconButtonDefaultUseCase(context),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'PlayButton',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => playButtonUseCase(context),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'AppElevatedButton',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Custom',
                      builder: (context) =>
                          customAppElevatedButtonUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'Primary Button',
                      builder: (context) =>
                          primaryAppElevatedButtonUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'Secondary Button',
                      builder: (context) =>
                          secondaryAppElevatedButtonUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'Primary Outline Button',
                      builder: (context) =>
                          primaryOutlineAppElevatedButtonUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'Secondary Outline Button',
                      builder: (context) =>
                          secondaryOutlineAppElevatedButtonUseCase(context),
                    ),
                  ],
                ),
                WidgetbookFolder(
                  name: 'navigation',
                  children: [
                    WidgetbookComponent(
                      name: 'AppSidebar',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              appSidebarDefaultUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'DrawerPageWrapper',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              drawerPageWrapperDefaultUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppBottomNavigationBar',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              appBottomNavigationBarDefaultUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'MenuListItem',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Mobile',
                          builder: (context) => menuItemDefaultUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Web',
                          builder: (context) => menuListItemWebUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppDrawer',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              appDrawerDefaultUseCase(context),
                        ),
                      ],
                    ),
                  ],
                  isInitiallyExpanded: true,
                ),
              ],
              isInitiallyExpanded: true,
            ),
            WidgetbookFolder(
              name: 'post',
              children: [
                WidgetbookFolder(
                  name: 'metrics',
                  children: [
                    WidgetbookComponent(
                      name: 'Likes',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) => likesDefaultUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'LikeIconButton',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              likeIconButtnonDefaultUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'MetricText',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              metricTextDefaultUseCase(context),
                        ),
                      ],
                    ),
                  ],
                  isInitiallyExpanded: true,
                ),
              ],
              isInitiallyExpanded: true,
            ),
            WidgetbookFolder(
              name: 'user',
              children: [
                WidgetbookComponent(
                  name: 'UserInfo',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => userInfoDefaultUseCase(context),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Username',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => usernameDefaultUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'Active',
                      builder: (context) => usernameActiveuseCase(context),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'DisplayName',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => displayNameDefaultUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'Active',
                      builder: (context) => displayNameActiveUseCase(context),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Avatar',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => avatarDefaultUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'Small',
                      builder: (context) => avatarSmallUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'Smaller',
                      builder: (context) => avatarSmallerUseCase(context),
                    ),
                    WidgetbookUseCase(
                      name: 'Smallest',
                      builder: (context) => avatarSmallestUseCase(context),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'UserFollows',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => userFollowsDefaultUseCase(context),
                    ),
                  ],
                ),
              ],
              isInitiallyExpanded: true,
            ),
          ],
          isInitiallyExpanded: true,
        ),
        WidgetbookFolder(
          name: 'home',
          children: [
            WidgetbookFolder(
              name: 'pages',
              children: [
                WidgetbookComponent(
                  name: 'NewsPage',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => homePageDefaultUseCase(context),
                    ),
                  ],
                ),
              ],
              isInitiallyExpanded: true,
            ),
          ],
          isInitiallyExpanded: true,
        ),
        WidgetbookFolder(
          name: 'pages',
          children: [
            WidgetbookComponent(
              name: 'LoginPage',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => loginPageDefaultUseCase(context),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'PasswordPage',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => passwordPageDefaultUseCase(context),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'AuthPage',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => authPageDefaultUseCase(context),
                ),
              ],
            ),
          ],
          isInitiallyExpanded: true,
        ),
      ],
    );
  }
}
