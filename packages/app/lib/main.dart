import 'package:core/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

/// App entry point
class App extends StatelessWidget {
  /// Creates new instance of [App]
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgetbook Demo App',
      theme: AppThemes.getTheme(),
      darkTheme: AppThemes.getTheme(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
      home: const HomePage(),
    );
  }
}

/// Test home page
class HomePage extends StatelessWidget {
  /// Creates new instance of [HomePage]
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppLocalizations.of(context)!.widgetbook),
      ),
    );
  }
}
