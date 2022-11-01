import 'package:timeago/timeago.dart';

/// Utility class for timeago formatted dates
class TimeagoUtils {
  /// Set custom messages. This has 2 important usages:
  ///
  /// 1. Override "en" locale short messages with custom messages
  ///    that can display seconds
  ///    (by default the package displays `now` for a duration less
  ///    than a minute ago)
  ///
  /// 2. by default the package only sets en & es locales
  ///    but it provides the messages for the other locales
  ///    so here we can set required locales for the app
  ///
  /// Available locales:
  /// https://github.com/andresaraujo/timeago.dart/tree/master/packages/timeago/lib/src/messages
  static void setMessages() {
    // Set custom en messages
    setLocaleMessages('en_short', CustomEnShortMessages());

    // Set custom en messages
    setLocaleMessages('ar_short', ArShortMessages());

    // Uncomment when locales are added
    // setLocaleMessages('de_short', DeShortMessages());
  }
}

/// Custom messages for en_short timeago dates
class CustomEnShortMessages extends EnShortMessages {
  @override
  String lessThanOneMinute(int seconds) => seconds == 0 ? 'now' : '${seconds}s';
}
