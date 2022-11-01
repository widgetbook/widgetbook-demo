import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
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
                  name: 'Tweet Actions',
                  isExpanded: true,
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
                  name: 'Detailed Tweet Metrics',
                  isExpanded: true,
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
                        iconPath: context.knobs.options(
                          label: 'Icon',
                          options: AppIcons.iconPaths
                              .map(
                                (icon) => Option<String>(
                                  label: AppIcons.getName(icon),
                                  value: icon,
                                ),
                              )
                              .toList(),
                        ),
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
                  name: 'AppIcon',
                  useCases: List.generate(
                    AppIcons.iconPaths.length,
                    (index) => WidgetbookUseCase(
                      name: AppIcons.getName(AppIcons.iconPaths[index]),
                      builder: (context) => AppIcon(
                        AppIcons.iconPaths[index],
                        isActive: context.knobs.boolean(label: 'isActive'),
                        activeColor: context.knobs.options<Color?>(
                              label: 'Active Color',
                              description: 'Icon color for active state'
                                  ' (defaults to Primary color)',
                              options: colorOptions,
                            ) ??
                            AppColors.primary,
                        size: context.knobs.slider(
                          label: 'Icon Size',
                          min: 15,
                          max: 50,
                          divisions: 50 - 15,
                          initialValue: 40,
                        ),
                      ),
                    ),
                  ),
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
