import 'package:flutter/cupertino.dart';

/// List of RTL (Right-to-Left) languages locale codes
///
/// https://lingohub.com/academy/best-practices/rtl-language-list
List<String> rtlLocales = [
  'ar',
  'arc',
  'dv',
  'fa',
  'ha',
  'he',
  'khw',
  'ks',
  'ku',
  'ps',
  'ur',
  'yi',
];

/// Localization extension on the [BuildContext]
extension AppLocalization on BuildContext {
  /// Retrieves locale code from context
  ///
  /// To be able to use `context.localeCode`
  /// instead of the longer `Localizations.localeOf(context).languageCode`
  String get localeCode {
    return Localizations.localeOf(this).languageCode;
  }

  /// Whether the current localization language is RTL
  bool get isRTL {
    return rtlLocales.contains(localeCode);
  }
}
