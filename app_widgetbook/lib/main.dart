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
          widgets: [
            WidgetbookComponent(
              name: 'Buttons',
              useCases: [
                WidgetbookUseCase(
                  name: 'Primary Button',
                  builder: (context) => Button.primary(
                    label: 'Button',
                    onPressed: () {},
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Secondary Button',
                  builder: (context) => Button.secondary(
                    label: 'Button',
                    onPressed: () {},
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Primary Outline Button',
                  builder: (context) => Button.primaryOutline(
                    label: 'Button',
                    onPressed: () {},
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Secondary Outline Button',
                  builder: (context) => Button.secondaryOutline(
                    label: 'Button',
                    onPressed: () {},
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
