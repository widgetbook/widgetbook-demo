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
    );
  }
}
