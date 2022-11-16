// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'dart:math';
import 'package:app_widgetbook/app.dart';
import 'package:app_widgetbook/auth/components/auth_buttons.dart';
import 'package:app_widgetbook/auth/pages/auth_page.dart';
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
import 'package:app_widgetbook/auth/pages/login_page.dart';
=======
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
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
import 'package:app_widgetbook/core/ui_elements/app_icon_button.dart';
import 'package:app_widgetbook/core/ui_elements/button.dart';
import 'package:app_widgetbook/core/ui_elements/formatted_date_time.dart';
import 'package:app_widgetbook/core/ui_elements/play_button.dart';
import 'package:app_widgetbook/core/ui_elements/twitter_logo.dart';
import 'package:app_widgetbook/core/user/avatar.dart';
import 'package:app_widgetbook/core/user/display_name.dart';
import 'package:app_widgetbook/core/user/username.dart';
import 'package:auth/src/widgets/auth_buttons.dart';
import 'package:core/core.dart';
import 'package:core/src/styles/app_colors.dart';
import 'package:flutter/foundation.dart';
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
      supportedLocales: locales,
      localizationsDelegates: localizationsDelegates,
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
      textScaleFactors: [
        1.0,
        1.5,
        2.0,
      ],
      categories: [
        WidgetbookCategory(
          name: 'use cases',
          folders: [
            WidgetbookFolder(
              name: 'widgets',
              widgets: [
                WidgetbookComponent(
                  name: 'AuthButtons',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => authButtonsDefaultUseCase(context),
                    ),
                  ],
                ),
              ],
              folders: [
                WidgetbookFolder(
                  name: 'ui',
                  widgets: [
                    WidgetbookComponent(
                      name: 'FormattedDateTime',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Date & Time',
                          builder: (context) =>
                              formattedDateTimeDateAndTimeUseCase(context),
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
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
                      name: 'Button',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Primary Button',
                          builder: (context) => primaryButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Secondary Button',
                          builder: (context) => secondaryButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Primary Outline Button',
                          builder: (context) =>
                              primaryOutlineButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Secondary Outline Button',
                          builder: (context) =>
                              secondaryOutlineButtonUseCase(context),
=======
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
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                        ),
                      ],
                    ),
                    WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                      name: 'AppIconButton',
=======
                      name: 'TwitterLogo',
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                              appIconButtonDefaultUseCase(context),
=======
                              twitterLogoDefaultUseCase(context),
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                        ),
                      ],
                    ),
                    WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                      name: 'PlayButton',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) => playButtonUseCase(context),
=======
                      name: 'Button',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Primary Button',
                          builder: (context) => primaryButtonUseCase(context),
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                        ),
                      ],
                    ),
                  ],
                  folders: [],
                  isExpanded: true,
                ),
                WidgetbookFolder(
                  name: 'user',
                  widgets: [
                    WidgetbookComponent(
                      name: 'Username',
                      useCases: [
                        WidgetbookUseCase(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                          name: 'Default',
                          builder: (context) => usernameDefaultUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Active',
                          builder: (context) => usernameActiveuseCase(context),
=======
                          name: 'Secondary Button',
                          builder: (context) => secondaryButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Primary Outline Button',
                          builder: (context) =>
                              primaryOutlineButtonUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Secondary Outline Button',
                          builder: (context) =>
                              secondaryOutlineButtonUseCase(context),
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                        ),
                      ],
                    ),
                    WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                      name: 'DisplayName',
=======
                      name: 'AppIconButton',
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                              displayNameDefaultUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Active',
                          builder: (context) =>
                              displayNameActiveUseCase(context),
=======
                              appIconButtonDefaultUseCase(context),
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                        ),
                      ],
                    ),
                    WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
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
                  ],
                  folders: [],
                  isExpanded: true,
                ),
                WidgetbookFolder(
                  name: 'tweet',
                  widgets: [
                    WidgetbookComponent(
                      name: 'TweetActions',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              tweetActionsDefaultUseCase(context),
=======
                      name: 'PlayButton',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) => playButtonUseCase(context),
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                        ),
                      ],
                    ),
                  ],
                  folders: [],
                  isExpanded: true,
                ),
                WidgetbookFolder(
                  name: 'user',
                  widgets: [
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
                          builder: (context) =>
                              displayNameDefaultUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Active',
                          builder: (context) =>
                              displayNameActiveUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                      name: 'TweetHeader',
=======
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
                  ],
                  folders: [],
                  isExpanded: true,
                ),
                WidgetbookFolder(
                  name: 'tweet',
                  widgets: [
                    WidgetbookComponent(
                      name: 'TweetActions',
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              tweetActionsDefaultUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                      name: 'TweetMedia',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Image',
                          builder: (context) => tweetMediaImageUseCase(context),
                        ),
=======
                      name: 'QuotedTweet',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Large Media',
                          builder: (context) =>
                              quotedTweetLargeMediaUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Thumbnail Media',
                          builder: (context) =>
                              quotedTweetThumbnailMediaUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'CollapsedTweet',
                      useCases: [
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                        WidgetbookUseCase(
                          name: 'Gallery',
                          builder: (context) =>
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                              tweetMediaGalleryUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'GIF',
                          builder: (context) => tweetMediaGIFUseCase(context),
=======
                              collapsedTweetDefaultUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Quote Tweet',
                          builder: (context) =>
                              collapsedTweetQuoteTweetUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'TweetHeader',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              tweetHeaderDefaultUseCase(context),
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                        ),
                      ],
                    ),
                    WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                      name: 'TweetAnnotation',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              tweetAnnotationDefaultUseCase(context),
=======
                      name: 'TweetMedia',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Image',
                          builder: (context) => tweetMediaImageUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Gallery',
                          builder: (context) =>
                              tweetMediaGalleryUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'GIF',
                          builder: (context) => tweetMediaGIFUseCase(context),
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                        ),
                      ],
                    ),
                    WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                      name: 'ExpandedTweetInfo',
=======
                      name: 'TweetAnnotation',
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                              detailedTweetInfoDefaultUseCase(context),
=======
                              tweetAnnotationDefaultUseCase(context),
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                        ),
                      ],
                    ),
                    WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                      name: 'ExpandedTweet',
=======
                      name: 'ExpandedTweetInfo',
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                              expandedTweetDefaultUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Quote Tweet',
                          builder: (context) =>
                              expandedTweetQuoteTweetUseCase(context),
=======
                              detailedTweetInfoDefaultUseCase(context),
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                        ),
                      ],
                    ),
                    WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                      name: 'TweetDate',
=======
                      name: 'ExpandedTweet',
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                              tweetDateDefaultuseCase(context),
                        ),
                      ],
                    ),
                  ],
                  folders: [
                    WidgetbookFolder(
                      name: 'metrics',
                      widgets: [
                        WidgetbookComponent(
                          name: 'ExpandedTweetMetrics',
                          useCases: [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: (context) =>
                                  ExpandedTweetMetricsDefaultUseCase(context),
                            ),
                          ],
                        ),
                        WidgetbookComponent(
                          name: 'Likes',
=======
                              expandedTweetDefaultUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Quote Tweet',
                          builder: (context) =>
                              expandedTweetQuoteTweetUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'TweetDate',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              tweetDateDefaultuseCase(context),
                        ),
                      ],
                    ),
                  ],
                  folders: [
                    WidgetbookFolder(
                      name: 'metrics',
                      widgets: [
                        WidgetbookComponent(
                          name: 'ExpandedTweetMetrics',
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                          useCases: [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: (context) =>
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                                  likesDefaultUseCase(context),
=======
                                  ExpandedTweetMetricsDefaultUseCase(context),
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                            ),
                          ],
                        ),
                        WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                          name: 'Replies',
=======
                          name: 'Likes',
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                          useCases: [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: (context) =>
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                                  repliesDefaultUseCase(context),
=======
                                  likesDefaultUseCase(context),
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                            ),
                          ],
                        ),
                        WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
=======
                          name: 'Replies',
                          useCases: [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: (context) =>
                                  repliesDefaultUseCase(context),
                            ),
                          ],
                        ),
                        WidgetbookComponent(
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
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
                          name: 'Retweets',
                          useCases: [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: (context) =>
                                  retweetsDefaultUseCase(context),
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
                      folders: [],
                      isExpanded: true,
                    ),
                  ],
                  isExpanded: true,
                ),
              ],
              isExpanded: true,
            ),
            WidgetbookFolder(
              name: 'pages',
              widgets: [
                WidgetbookComponent(
<<<<<<< HEAD:app_widgetbook/lib/app.widgetbook.dart
                  name: 'LoginPage',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => loginPageDefaultUseCase(context),
                    ),
                  ],
                ),
                WidgetbookComponent(
=======
>>>>>>> 048c9357b9a11b01017657653e8cce3f8c56fe12:app_widgetbook/lib/main.widgetbook.dart
                  name: 'AuthPage',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => authPageDefaultUseCase(context),
                    ),
                  ],
                ),
              ],
              folders: [],
              isExpanded: true,
            ),
          ],
          widgets: [],
        ),
      ],
    );
  }
}
