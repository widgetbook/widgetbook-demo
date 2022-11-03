import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  TimeagoUtils.setMessages();
  runApp(const WidgetbookApp());
}

/// Entry point for the App's Widgetbook
class WidgetbookApp extends StatelessWidget {
  /// Creates a new instance of [WidgetbookApp]
  const WidgetbookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const <Locale>[
        Locale('en'),
        Locale('ar'),
      ],
      categories: [
        WidgetbookCategory(
          name: 'Core',
          folders: [
            WidgetbookFolder(
              name: 'Tweet',
              isExpanded: true,
              folders: [
                WidgetbookFolder(
                  name: 'Metrics',
                  widgets: [
                    WidgetbookComponent(
                      name: 'Like Icon',
                      isExpanded: true,
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) {
                            return LikeIconButton(
                              onPressed: () {},
                              isActive: context.knobs.boolean(label: 'Active'),
                              size: context.knobs.slider(
                                label: 'Icon Size',
                                initialValue: 30,
                                min: 15,
                                max: 50,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'Likes',
                      isExpanded: true,
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) {
                            return Likes(
                              metricValue: context.knobs
                                  .slider(
                                    label: 'Likes Count',
                                    description: 'Note: likes should be more'
                                        ' than 0 to be displayed',
                                    initialValue: 0,
                                    min: 0,
                                    divisions: 2500 ~/ 5,
                                    max: 2500,
                                  )
                                  .toInt(),
                            );
                          },
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'Replies',
                      isExpanded: true,
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) {
                            return Replies(
                              onPressed: () {},
                              metricValue: context.knobs
                                  .slider(
                                    label: 'Replies Count',
                                    description:
                                        'Note: replies should be more than'
                                        ' 0 to be displayed',
                                    initialValue: 0,
                                    min: 0,
                                    divisions: 25000 ~/ 50,
                                    max: 25000,
                                  )
                                  .toInt(),
                            );
                          },
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'Retweets',
                      isExpanded: true,
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) {
                            return Retweets(
                              metricValue: context.knobs
                                  .slider(
                                    label: 'Retweets Count',
                                    description: 'Note: retweets should be more'
                                        ' than 0 to be displayed',
                                    initialValue: 0,
                                    min: 0,
                                    divisions: 2500 ~/ 5,
                                    max: 2500,
                                  )
                                  .toInt(),
                            );
                          },
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'Metric Text',
                      isExpanded: true,
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) {
                            return MetricText(
                              value: context.knobs
                                  .slider(
                                    label: 'Value',
                                    min: 0,
                                    max: 25000,
                                    initialValue: 15,
                                    divisions: 25000 ~/ 50,
                                  )
                                  .toInt(),
                              isActive: context.knobs.boolean(
                                label: 'Active',
                              ),
                              activeColor: context.knobs.options(
                                label: 'Active Color',
                                options: [
                                  const Option(
                                    label: 'Primary',
                                    value: AppColors.primary,
                                  ),
                                  const Option(
                                    label: 'Pink',
                                    value: AppColors.pink,
                                  ),
                                  const Option(
                                    label: 'Success',
                                    value: AppColors.success,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
              widgets: [
                WidgetbookComponent(
                  name: 'TweetActions',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) {
                        return TweetActions(
                          repliesCount: context.knobs
                              .slider(
                                label: 'Replies',
                                min: 0,
                                max: 25000,
                                initialValue: 15,
                                divisions: 25000 ~/ 50,
                              )
                              .toInt(),
                          retweetsCount: context.knobs
                              .slider(
                                label: 'Retweets',
                                min: 0,
                                max: 25000,
                                initialValue: 15,
                                divisions: 25000 ~/ 50,
                              )
                              .toInt(),
                          likesCount: context.knobs
                              .slider(
                                label: 'Likes',
                                min: 0,
                                max: 25000,
                                initialValue: 15,
                                divisions: 25000 ~/ 50,
                              )
                              .toInt(),
                          onSharePressed: () {},
                          onRepliesPressed: () {},
                        );
                      },
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'DetailedTweetMetrics',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) {
                        return DetailedTweetMetrics(
                          retweetsCount: context.knobs
                              .slider(
                                label: 'Retweets',
                                min: 0,
                                max: 25000,
                                initialValue: 15,
                                divisions: 25000 ~/ 50,
                              )
                              .toInt(),
                          quoteTweetsCount: context.knobs
                              .slider(
                                label: 'Quote Tweets',
                                min: 0,
                                max: 25000,
                                initialValue: 15,
                                divisions: 25000 ~/ 50,
                              )
                              .toInt(),
                          likesCount: context.knobs
                              .slider(
                                label: 'Likes',
                                min: 0,
                                max: 25000,
                                initialValue: 15,
                                divisions: 25000 ~/ 50,
                              )
                              .toInt(),
                        );
                      },
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'TweetAnnotation',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) {
                        final type = context.knobs.options<TweetAnnotationType>(
                          label: 'Type',
                          options: TweetAnnotationType.values
                              .map(
                                (value) => Option(
                                  label: value.name.toUpperCase(),
                                  value: value,
                                ),
                              )
                              .toList(),
                        );
                        return TweetAnnotation(
                          type: type,
                          user: type.hasUser
                              ? context.knobs.text(
                                  label: 'User',
                                  initialValue: 'John Doe',
                                )
                              : null,
                        );
                      },
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'TweetDate',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => TweetDate(
                        date: getTweetDateOption(context),
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'TweetHeader',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => TweetHeader(
                        displayName: context.knobs.text(
                          label: 'Display Name',
                          initialValue: 'John Doe',
                        ),
                        username: context.knobs.text(
                          label: 'Username',
                          initialValue: 'johndoe',
                        ),
                        tweetDate: getTweetDateOption(context),
                      ),
                    )
                  ],
                ),
                WidgetbookComponent(
                  name: 'Detailed Tweet Info',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => DetailedTweetInfo(
                        tweetSource: context.knobs.options<TweetSource>(
                          label: 'Tweet Source',
                          options: TweetSource.values
                              .map(
                                (source) => Option(
                                  label: source.getText(context),
                                  value: source,
                                ),
                              )
                              .toList(),
                        ),
                        tweetDate: getTweetDateOption(context),
                      ),
                    )
                  ],
                ),
                WidgetbookComponent(
                  name: 'TweetImage',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => Center(
                        child: TweetImage(
                          imageUrl: DummyMedia.singlePhotoMedia[0].url,
                        ),
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'TweetGallery',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) {
                        final tweetImages = DummyMedia.fourPhotosMedia
                            .map((media) => media.url)
                            .toList();

                        return TweetGallery(
                          imageUrls: context.knobs.options(
                            label: 'Image Count',
                            options: [
                              for (int i = 4; i >= 2; i--)
                                Option(
                                  label: '$i Images',
                                  value: tweetImages.take(i).toList(),
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'TweetMedia',
                  isExpanded: true,
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Image',
                      builder: (context) => TweetMedia(
                        tweetMedia: DummyMedia.singlePhotoMedia,
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Gallery',
                      builder: (context) => TweetMedia(
                        tweetMedia: DummyMedia.fourPhotosMedia,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'UI Elements',
              isExpanded: true,
              widgets: [
                WidgetbookComponent(
                  name: 'Button',
                  isExpanded: true,
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Primary Button',
                      builder: (context) => Button.primary(
                        label: context.knobs.text(
                          label: 'Label',
                          initialValue: 'Button',
                        ),
                        onPressed: () {},
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Secondary Button',
                      builder: (context) => Button.secondary(
                        label: context.knobs.text(
                          label: 'Label',
                          initialValue: 'Button',
                        ),
                        onPressed: () {},
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Primary Outline Button',
                      builder: (context) => Button.primaryOutline(
                        label: context.knobs.text(
                          label: 'Label',
                          initialValue: 'Button',
                        ),
                        onPressed: () {},
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Secondary Outline Button',
                      builder: (context) => Button.secondaryOutline(
                        label: context.knobs.text(
                          label: 'Label',
                          initialValue: 'Button',
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'AppIconButton',
                  isExpanded: true,
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => AppIconButton(
                        onPressed: () {},
                        icon: const Icon(TwitterIcons.heart),
                        isActive: context.knobs.boolean(label: 'Active'),
                        color: context.knobs.options<Color?>(
                          label: 'Color',
                          description: 'Icon color for inactive and non-hovered'
                              ' states (defaults to Text Light color)',
                          options: colorOptions,
                        ),
                        activeColor: context.knobs.options<Color?>(
                              label: 'Active Color',
                              description: 'Icon color for active state'
                                  ' (defaults to Primary color)',
                              options: colorOptions,
                            ) ??
                            AppColors.primary,
                        hoverColor: context.knobs.options<Color?>(
                              label: 'Hover Color',
                              description:
                                  'Icon & highlight color for hover state'
                                  ' (defaults to Primary color)',
                              options: colorOptions,
                            ) ??
                            AppColors.primary,
                        size: context.knobs.slider(
                          label: 'Icon Size',
                          min: 15,
                          max: 50,
                          divisions: 50 - 15,
                          initialValue: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'FormattedDateTime',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Date & Time',
                      builder: (context) => FormattedDateTime(
                        date: DateTime.now(),
                        isDateOnly: false,
                        isTime12h: context.knobs.boolean(
                          label: '12-Hour Format',
                          initialValue: true,
                        ),
                        hasYear: context.knobs.boolean(
                          label: 'Has Year',
                          initialValue: true,
                        ),
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Date',
                      builder: (context) => FormattedDateTime(
                        date: DateTime.now(),
                        hasYear: context.knobs.boolean(
                          label: 'Has Year',
                          initialValue: true,
                        ),
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Time',
                      builder: (context) => FormattedDateTime(
                        date: DateTime.now(),
                        isTimeOnly: true,
                        isTime12h: context.knobs.boolean(
                          label: '12-Hour Format',
                          initialValue: true,
                        ),
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'TimeAgo',
                      builder: (context) => FormattedDateTime(
                        date: context.knobs.options<DateTime>(
                          label: 'Date',
                          options: [
                            Option(
                              label: 'Now',
                              value: DateTime.now(),
                            ),
                            Option(
                              label: '5 Minutes Ago',
                              value: DateTime.now().subtract(
                                const Duration(minutes: 5),
                              ),
                            ),
                            Option(
                              label: '12 hours ago',
                              value: DateTime.now().subtract(
                                const Duration(hours: 12),
                              ),
                            ),
                            Option(
                              label: '2 days ago',
                              value: DateTime.now().subtract(
                                const Duration(days: 2),
                              ),
                            ),
                            Option(
                              label: '3 months ago',
                              value: DateTime.now().subtract(
                                const Duration(days: 30 * 3),
                              ),
                            ),
                          ],
                        ),
                        isTimeAgo: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookFolder(
              name: 'User',
              isExpanded: true,
              widgets: [
                WidgetbookComponent(
                  name: 'Avatar',
                  isExpanded: true,
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) => Avatar(
                        imageUrl: context.knobs.text(
                          label: 'Image URL',
                          initialValue:
                              'https://pbs.twimg.com/profile_images/1446021572960133120/UZYljO51_400x400.jpg',
                        ),
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Small',
                      builder: (context) => Avatar.small(
                        imageUrl: context.knobs.text(
                          label: 'Image URL',
                          initialValue: '',
                        ),
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Smaller',
                      builder: (context) => Avatar.smaller(
                        imageUrl: context.knobs.text(
                          label: 'Image URL',
                          initialValue: '',
                        ),
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Smallest',
                      builder: (context) => Avatar.smallest(
                        imageUrl: context.knobs.text(
                          label: 'Image URL',
                          initialValue: '',
                        ),
                      ),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'DisplayName',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) {
                        return DisplayName(
                          value: context.knobs.text(
                            label: 'Value',
                            description: 'Enter display name',
                            initialValue: 'John Doe',
                          ),
                        );
                      },
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'Username',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Default',
                      builder: (context) {
                        return Username(
                          value: context.knobs.text(
                            label: 'Value',
                            description: 'Enter username (Twitter handle)',
                            initialValue: 'johndoe',
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: AppThemes.getTheme(),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: AppThemes.getTheme(isDark: true),
        ),
      ],
      appInfo: AppInfo(name: 'Widgetbook Demo App'),
      textScaleFactors: [1, 1.5, 2],
    );
  }
}

/// Predefined options knob for a tweet date
DateTime getTweetDateOption(BuildContext context) {
  return context.knobs.options<DateTime>(
    label: 'Date',
    description: "The date should be a timeago string if it's "
        'less than 24 hours ago, and it should '
        "include the year only if it's different "
        'than the one we are currently in',
    options: [
      Option(
        label: '12 hours ago',
        value: DateTime.now().subtract(
          const Duration(hours: 12),
        ),
      ),
      Option(
        label: '2 days ago',
        value: DateTime.now().subtract(
          const Duration(days: 2),
        ),
      ),
      Option(
        label: '2 years ago',
        value: DateTime.now().subtract(
          const Duration(days: 365 * 3),
        ),
      ),
    ],
  );
}

/// List of app color options that can be used with knobs
const List<Option<Color?>> colorOptions = [
  Option(
    label: 'Default',
    value: null,
  ),
  Option(
    label: 'Text Light',
    value: AppColors.textLight,
  ),
  Option(
    label: 'White',
    value: AppColors.whiteLight,
  ),
  Option(
    label: 'Primary',
    value: AppColors.primary,
  ),
  Option(
    label: 'Secondary',
    value: AppColors.secondary,
  ),
  Option(
    label: 'Success',
    value: AppColors.success,
  ),
  Option(
    label: 'Pink',
    value: AppColors.pink,
  ),
];
