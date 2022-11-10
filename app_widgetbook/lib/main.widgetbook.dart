// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'dart:math';
import 'package:app_widgetbook/core/tweet/collapsed_tweet.dart';
import 'package:app_widgetbook/core/tweet/expanded_tweet_info.dart';
import 'package:app_widgetbook/core/tweet/expanded_tweet_metrics.dart';
import 'package:app_widgetbook/core/tweet/expanded_tweet.dart';
import 'package:app_widgetbook/core/tweet/metrics/like_icon_button.dart';
import 'package:app_widgetbook/core/tweet/metrics/likes.dart';
import 'package:app_widgetbook/core/tweet/metrics/metric_text.dart';
import 'package:app_widgetbook/core/tweet/metrics/replies.dart';
import 'package:app_widgetbook/core/tweet/metrics/retweets.dart';
import 'package:app_widgetbook/core/tweet/tweet_actions.dart';
import 'package:app_widgetbook/core/tweet/tweet_annotation.dart';
import 'package:app_widgetbook/core/tweet/tweet_date.dart';
import 'package:app_widgetbook/core/tweet/tweet_header.dart';
import 'package:app_widgetbook/core/tweet/tweet_media.dart';
import 'package:app_widgetbook/core/ui_elements/app_icon_button.dart';
import 'package:app_widgetbook/core/ui_elements/button.dart';
import 'package:app_widgetbook/core/ui_elements/formatted_date_time.dart';
import 'package:app_widgetbook/core/ui_elements/play_button.dart';
import 'package:app_widgetbook/core/user/avatar.dart';
import 'package:app_widgetbook/core/user/display_name.dart';
import 'package:app_widgetbook/core/user/username.dart';
import 'package:app_widgetbook/main.dart';
import 'package:core/core.dart';
import 'package:core/src/styles/app_colors.dart';
import 'package:core/src/widgets/hover_detector.dart';
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
              ],
              folders: [
                WidgetbookFolder(
                  name: 'tweet',
                  widgets: [
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
                      name: 'DetailedTweetInfo',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              detailedTweetInfoDefaultUseCase(context),
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
                      name: 'TweetAnnotation',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              tweetAnnotationDefaultUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'TweetMedia',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Image',
                          builder: (context) => tweetMediaImageUseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'Gallery',
                          builder: (context) =>
                              tweetMediaGalleryuseCase(context),
                        ),
                        WidgetbookUseCase(
                          name: 'GIF',
                          builder: (context) => tweetMediaGIFuseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'ExpandedTweet',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              expandedTweetDefaultUseCase(context),
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
                    WidgetbookComponent(
                      name: 'CollapsedTweet',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              collapsedTweetDefaultUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'TweetActions',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) =>
                              tweetActionsDefaultUseCase(context),
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
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'Replies',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) => repliesDefaultUseCase(context),
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'Retweets',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) => retweetsDefaultUseCase(context),
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
              ],
              isExpanded: true,
            ),
          ],
          widgets: [],
        ),
      ],
    );
  }
}
