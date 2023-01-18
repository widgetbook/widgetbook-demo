// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';

import 'package:app_widgetbook/app.dart';
import 'package:app_widgetbook/auth/components/auth_buttons.dart';
import 'package:app_widgetbook/auth/pages/auth_page.dart';
import 'package:app_widgetbook/auth/pages/login_page.dart';
import 'package:app_widgetbook/auth/pages/password_page.dart';
import 'package:app_widgetbook/core/tweet/collapsed_tweet.dart';
import 'package:app_widgetbook/core/tweet/expanded_tweet.dart';
import 'package:app_widgetbook/core/tweet/expanded_tweet_info.dart';
import 'package:app_widgetbook/core/tweet/expanded_tweet_metrics.dart';
import 'package:app_widgetbook/core/tweet/metrics/like_icon_button.dart';
import 'package:app_widgetbook/core/tweet/metrics/likes.dart';
import 'package:app_widgetbook/core/tweet/metrics/metric_text.dart';
import 'package:app_widgetbook/core/tweet/metrics/replies.dart';
import 'package:app_widgetbook/core/tweet/metrics/retweets.dart';
import 'package:app_widgetbook/core/tweet/quoted_tweet.dart';
import 'package:app_widgetbook/core/tweet/tweet_actions.dart';
import 'package:app_widgetbook/core/tweet/tweet_annotation.dart';
import 'package:app_widgetbook/core/tweet/tweet_date.dart';
import 'package:app_widgetbook/core/tweet/tweet_header.dart';
import 'package:app_widgetbook/core/tweet/tweet_media.dart';
import 'package:app_widgetbook/core/ui_elements/app_bottom_navigation_bar.dart';
import 'package:app_widgetbook/core/ui_elements/app_drawer.dart';
import 'package:app_widgetbook/core/ui_elements/app_elevated_button.dart';
import 'package:app_widgetbook/core/ui_elements/app_icon_button.dart';
import 'package:app_widgetbook/core/ui_elements/app_sidebar.dart';
import 'package:app_widgetbook/core/ui_elements/drawer_page_wrapper.dart';
import 'package:app_widgetbook/core/ui_elements/formatted_date_time.dart';
import 'package:app_widgetbook/core/ui_elements/menu_list_item.dart';
import 'package:app_widgetbook/core/ui_elements/play_button.dart';
import 'package:app_widgetbook/core/ui_elements/twitter_logo.dart';
import 'package:app_widgetbook/core/user/avatar.dart';
import 'package:app_widgetbook/core/user/display_name.dart';
import 'package:app_widgetbook/core/user/user_follows.dart';
import 'package:app_widgetbook/core/user/user_info.dart';
import 'package:app_widgetbook/core/user/username.dart';
import 'package:app_widgetbook/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({super.key});

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
            activeTextScale: 1,
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
                    const Device(
                      name: 'iPhone 12',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2532,
                          width: 1170,
                        ),
                        scaleFactor: 3,
                      ),
                      type: DeviceType.mobile,
                    ),
                    const Device(
                      name: 'iPhone 13',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2532,
                          width: 1170,
                        ),
                        scaleFactor: 3,
                      ),
                      type: DeviceType.mobile,
                    ),
                    const Device(
                      name: '7.9" iPad mini',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1024,
                          width: 768,
                        ),
                        scaleFactor: 2,
                      ),
                      type: DeviceType.tablet,
                    ),
                    const Device(
                      name: 'Desktop 1080p',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1080,
                          width: 1920,
                        ),
                        scaleFactor: 2,
                      ),
                      type: DeviceType.desktop,
                    ),
                  ],
                  activeDevice: const Device(
                    name: 'iPhone 12',
                    resolution: Resolution(
                      nativeSize: DeviceSize(
                        height: 2532,
                        width: 1170,
                      ),
                      scaleFactor: 3,
                    ),
                    type: DeviceType.mobile,
                  ),
                ),
              ),
              WidgetbookFrame(
                setting: DeviceSetting(
                  devices: [
                    const Device(
                      name: 'iPhone 12',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2532,
                          width: 1170,
                        ),
                        scaleFactor: 3,
                      ),
                      type: DeviceType.mobile,
                    ),
                    const Device(
                      name: 'iPhone 13',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 2532,
                          width: 1170,
                        ),
                        scaleFactor: 3,
                      ),
                      type: DeviceType.mobile,
                    ),
                    const Device(
                      name: '7.9" iPad mini',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1024,
                          width: 768,
                        ),
                        scaleFactor: 2,
                      ),
                      type: DeviceType.tablet,
                    ),
                    const Device(
                      name: 'Desktop 1080p',
                      resolution: Resolution(
                        nativeSize: DeviceSize(
                          height: 1080,
                          width: 1920,
                        ),
                        scaleFactor: 2,
                      ),
                      type: DeviceType.desktop,
                    ),
                  ],
                  activeDevice: const Device(
                    name: 'iPhone 12',
                    resolution: Resolution(
                      nativeSize: DeviceSize(
                        height: 2532,
                        width: 1170,
                      ),
                      scaleFactor: 3,
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
        WidgetbookCategory(
          name: 'use cases',
          children: [
            WidgetbookFolder(
              name: 'widgets',
              children: [
                WidgetbookComponent(
                  name: 'AuthButtons',
                  useCases: const [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: authButtonsDefaultUseCase,
                    ),
                  ],
                ),
                WidgetbookFolder(
                  name: 'ui',
                  children: [
                    WidgetbookComponent(
                      name: 'FormattedDateTime',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Date & Time',
                          builder: formattedDateTimeDateAndTimeUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Date',
                          builder: formattedDateTimeDateUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Time',
                          builder: formattedDateTimeTimeUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'TimeAgo',
                          builder: formattedDateTimeTimeAgoUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'TwitterLogo',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: twitterLogoDefaultUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppIconButton',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: appIconButtonDefaultUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'PlayButton',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: playButtonUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'AppElevatedButton',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Custom',
                          builder: customAppElevatedButtonUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Primary Button',
                          builder: primaryAppElevatedButtonUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Secondary Button',
                          builder: secondaryAppElevatedButtonUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Primary Outline Button',
                          builder: primaryOutlineAppElevatedButtonUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Secondary Outline Button',
                          builder: secondaryOutlineAppElevatedButtonUseCase,
                        ),
                      ],
                    ),
                    WidgetbookFolder(
                      name: 'navigation',
                      children: [
                        WidgetbookComponent(
                          name: 'AppSidebar',
                          useCases: const [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: appSidebarDefaultUseCase,
                            ),
                          ],
                        ),
                        WidgetbookComponent(
                          name: 'DrawerPageWrapper',
                          useCases: const [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: drawerPageWrapperDefaultUseCase,
                            ),
                          ],
                        ),
                        WidgetbookComponent(
                          name: 'AppBottomNavigationBar',
                          useCases: const [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: appBottomNavigationBarDefaultUseCase,
                            ),
                          ],
                        ),
                        WidgetbookComponent(
                          name: 'MenuListItem',
                          useCases: const [
                            WidgetbookUseCase(
                              name: 'Mobile',
                              builder: menuItemDefaultUseCase,
                            ),
                            WidgetbookUseCase(
                              name: 'Web',
                              builder: menuListItemWebUseCase,
                            ),
                          ],
                        ),
                        WidgetbookComponent(
                          name: 'AppDrawer',
                          useCases: const [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: appDrawerDefaultUseCase,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                WidgetbookFolder(
                  name: 'user',
                  children: [
                    WidgetbookComponent(
                      name: 'UserInfo',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: userInfoDefaultUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'Username',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: usernameDefaultUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Active',
                          builder: usernameActiveuseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'DisplayName',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: displayNameDefaultUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Active',
                          builder: displayNameActiveUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'Avatar',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: avatarDefaultUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Small',
                          builder: avatarSmallUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Smaller',
                          builder: avatarSmallerUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Smallest',
                          builder: avatarSmallestUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'UserFollows',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: userFollowsDefaultUseCase,
                        ),
                      ],
                    ),
                  ],
                ),
                WidgetbookFolder(
                  name: 'tweet',
                  children: [
                    WidgetbookComponent(
                      name: 'TweetActions',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: tweetActionsDefaultUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'QuotedTweet',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Large Media',
                          builder: quotedTweetLargeMediaUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Thumbnail Media',
                          builder: quotedTweetThumbnailMediaUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'CollapsedTweet',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: collapsedTweetDefaultUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Quote Tweet',
                          builder: collapsedTweetQuoteTweetUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'TweetHeader',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: tweetHeaderDefaultUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'TweetMedia',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Image',
                          builder: tweetMediaImageUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Gallery',
                          builder: tweetMediaGalleryUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'GIF',
                          builder: tweetMediaGIFUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'TweetAnnotation',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: tweetAnnotationDefaultUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'ExpandedTweetInfo',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: detailedTweetInfoDefaultUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'ExpandedTweet',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: expandedTweetDefaultUseCase,
                        ),
                        WidgetbookUseCase(
                          name: 'Quote Tweet',
                          builder: expandedTweetQuoteTweetUseCase,
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'TweetDate',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: tweetDateDefaultuseCase,
                        ),
                      ],
                    ),
                    WidgetbookFolder(
                      name: 'metrics',
                      children: [
                        WidgetbookComponent(
                          name: 'ExpandedTweetMetrics',
                          useCases: const [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: ExpandedTweetMetricsDefaultUseCase,
                            ),
                          ],
                        ),
                        WidgetbookComponent(
                          name: 'Likes',
                          useCases: const [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: likesDefaultUseCase,
                            ),
                          ],
                        ),
                        WidgetbookComponent(
                          name: 'Replies',
                          useCases: const [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: repliesDefaultUseCase,
                            ),
                          ],
                        ),
                        WidgetbookComponent(
                          name: 'LikeIconButton',
                          useCases: const [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: likeIconButtnonDefaultUseCase,
                            ),
                          ],
                        ),
                        WidgetbookComponent(
                          name: 'Retweets',
                          useCases: const [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: retweetsDefaultUseCase,
                            ),
                          ],
                        ),
                        WidgetbookComponent(
                          name: 'MetricText',
                          useCases: const [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: metricTextDefaultUseCase,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'home',
              children: [
                WidgetbookFolder(
                  name: 'pages',
                  children: [
                    WidgetbookComponent(
                      name: 'HomePage',
                      useCases: const [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: homePageDefaultUseCase,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'pages',
              children: [
                WidgetbookComponent(
                  name: 'LoginPage',
                  useCases: const [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: loginPageDefaultUseCase,
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'PasswordPage',
                  useCases: const [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: passwordPageDefaultUseCase,
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'AuthPage',
                  useCases: const [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: authPageDefaultUseCase,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
