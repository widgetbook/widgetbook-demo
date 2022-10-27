import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const WidgetbookApp());
}

class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [
        WidgetbookCategory(
          name: 'Core',
          isExpanded: true,
          folders: [
            WidgetbookFolder(
              name: 'Tweet',
              isExpanded: true,
              folders: [
                WidgetbookFolder(
                  name: 'Metrics',
                  isExpanded: true,
                  widgets: [
                    WidgetbookComponent(
                      name: 'Like Icon',
                      isExpanded: true,
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) {
                            return Center(
                              child: LikeIconButton(
                                onPressed: () {},
                                isActive: context.knobs.boolean(
                                  label: 'Active',
                                  initialValue: false,
                                ),
                                size: context.knobs.slider(
                                  label: 'Icon Size',
                                  initialValue: 30,
                                  min: 15,
                                  max: 50,
                                ),
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
                            return Center(
                              child: Likes(
                                metricValue: context.knobs
                                    .slider(
                                      label: 'Likes Count',
                                      description:
                                          'Note: likes should be more than 0 to be displayed',
                                      initialValue: 0,
                                      min: 0,
                                      divisions: 2500 ~/ 5,
                                      max: 2500,
                                    )
                                    .toInt(),
                              ),
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
                            return Center(
                              child: Replies(
                                metricValue: context.knobs
                                    .slider(
                                      label: 'Replies Count',
                                      description:
                                          'Note: replies should be more than 0 to be displayed',
                                      initialValue: 0,
                                      min: 0,
                                      divisions: 2500 ~/ 5,
                                      max: 2500,
                                    )
                                    .toInt(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    WidgetbookComponent(
                      name: 'Metric',
                      useCases: [
                        WidgetbookUseCase(
                          name: 'Default',
                          builder: (context) {
                            return Center(
                              child: MetricText(
                                value: context.knobs
                                    .slider(
                                      label: 'Value',
                                      min: 0,
                                      max: 200,
                                      initialValue: 15,
                                      divisions: 200 ~/ 5,
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
                        icon: const Icon(Icons.home_filled),
                        isActive: context.knobs.boolean(label: 'Active'),
                        color: context.knobs.options<Color?>(
                          label: 'Color',
                          description:
                              'Icon color for inactive and non-hovered states (defaults to Text Light color)',
                          options: colorOptions,
                        ),
                        activeColor: context.knobs.options<Color?>(
                              label: 'Active Color',
                              description:
                                  'Icon color for active state (defaults to Primary color)',
                              options: colorOptions,
                            ) ??
                            AppColors.primary,
                        hoverColor: context.knobs.options<Color?>(
                              label: 'Hover Color',
                              description:
                                  'Icon & highlight color for hover state (defaults to Primary color)',
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
      useCaseBuilder: (BuildContext context, Widget child) {
        return Center(
          child: child,
        );
      },
      appInfo: AppInfo(name: 'Widgetbook Demo App'),
      textScaleFactors: [1, 1.5, 2],
    );
  }
}

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
