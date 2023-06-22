import 'package:app_widgetbook/app.directories.g.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

void main() {
  runApp(const WidgetbookApp());
}

/// Retrieves Light Theme
ThemeData getLightTheme() => AppThemes.getTheme();

/// Retrieves Dark Theme
ThemeData getDarkTheme() => AppThemes.getTheme(isDark: true);

/// Supported locales
List<Locale> locales = const [
  Locale('en'),
  Locale('ar'),
];

/// App Localization Delegates
List<LocalizationsDelegate<dynamic>> localizationsDelegates =
    AppLocalizations.localizationsDelegates;

/// Entry point for the App's Widgetbook
@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  /// Creates a new instance of [WidgetbookApp]
  const WidgetbookApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        TextScaleAddon(scales: [1, 1.5, 2]),
        LocalizationAddon(
          locales: locales,
          localizationsDelegates: localizationsDelegates,
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPad,
            Devices.ios.iPhone13,
          ],
        ),
        MaterialThemeAddon(
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
        ),
      ],
    );
  }
}
