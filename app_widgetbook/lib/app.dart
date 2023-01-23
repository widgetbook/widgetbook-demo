import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

void main() {
  TimeagoUtils.setMessages();
  runApp(const App());
}

/// Retrieves Light Theme
@WidgetbookTheme(name: 'Light', isDefault: true)
ThemeData getLightTheme() => AppThemes.getTheme();

/// Retrieves Dark Theme
@WidgetbookTheme(name: 'Dark', isDefault: true)
ThemeData getDarkTheme() => AppThemes.getTheme(isDark: true);

/// Supported locales
@WidgetbookLocales()
List<Locale> locales = const [
  Locale('en'),
  Locale('ar'),
];

/// App Localization Delegates
@WidgetbookLocalizationDelegates()
List<LocalizationsDelegate<dynamic>> localizationsDelegates =
    AppLocalizations.localizationsDelegates;

/// Entry point for the App's Widgetbook
@WidgetbookApp.material(
  name: 'App Widgetbook',
  textScaleFactors: [1, 1.5, 2],
  devices: [
    Apple.iPhone12,
    Apple.iPhone13,
    Apple.iPadMini,
    Desktop.desktop1080p,
  ],
)
class App extends StatelessWidget {
  /// Creates a new instance of [App]
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp();
  }
}
