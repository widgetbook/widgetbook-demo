import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @widgetbook.
  ///
  /// In en, this message translates to:
  /// **'Widgetbook'**
  String get widgetbook;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @retweets.
  ///
  /// In en, this message translates to:
  /// **'Retweets'**
  String get retweets;

  /// No description provided for @likes.
  ///
  /// In en, this message translates to:
  /// **'Likes'**
  String get likes;

  /// No description provided for @quoteTweets.
  ///
  /// In en, this message translates to:
  /// **'Quote Tweets'**
  String get quoteTweets;

  /// No description provided for @liked.
  ///
  /// In en, this message translates to:
  /// **'liked'**
  String get liked;

  /// No description provided for @pinnedTweet.
  ///
  /// In en, this message translates to:
  /// **'Pinned Tweet'**
  String get pinnedTweet;

  /// No description provided for @replied.
  ///
  /// In en, this message translates to:
  /// **'replied'**
  String get replied;

  /// No description provided for @follows.
  ///
  /// In en, this message translates to:
  /// **'follows'**
  String get follows;

  /// No description provided for @retweeted.
  ///
  /// In en, this message translates to:
  /// **'retweeted'**
  String get retweeted;

  /// No description provided for @receivedNewReplies.
  ///
  /// In en, this message translates to:
  /// **'Received new replies'**
  String get receivedNewReplies;

  /// No description provided for @twitterWebApp.
  ///
  /// In en, this message translates to:
  /// **'Twitter Web App'**
  String get twitterWebApp;

  /// No description provided for @twitterForIphone.
  ///
  /// In en, this message translates to:
  /// **'Twitter for iPhone'**
  String get twitterForIphone;

  /// No description provided for @twitterForAndroid.
  ///
  /// In en, this message translates to:
  /// **'Twitter for Android'**
  String get twitterForAndroid;

  /// No description provided for @showThisThread.
  ///
  /// In en, this message translates to:
  /// **'Show this thread'**
  String get showThisThread;

  /// No description provided for @showMoreReplies.
  ///
  /// In en, this message translates to:
  /// **'Show more replies'**
  String get showMoreReplies;

  /// No description provided for @replyingTo.
  ///
  /// In en, this message translates to:
  /// **'Replying to'**
  String get replyingTo;

  /// No description provided for @authPageTitle.
  ///
  /// In en, this message translates to:
  /// **'See what\'s happening in the world right now.'**
  String get authPageTitle;

  /// No description provided for @continueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get continueWithGoogle;

  /// No description provided for @continueWithApple.
  ///
  /// In en, this message translates to:
  /// **'Continue with Apple'**
  String get continueWithApple;

  /// No description provided for @haveAnAccountAlready.
  ///
  /// In en, this message translates to:
  /// **'Have and account already?'**
  String get haveAnAccountAlready;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createAccount;

  /// No description provided for @logIn.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get logIn;

  /// No description provided for @termsText.
  ///
  /// In en, this message translates to:
  /// **'By signing up, you agree to our Terms, Privacy Policy, and Cookie Use'**
  String get termsText;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @loginPageTitle.
  ///
  /// In en, this message translates to:
  /// **'To get started, first enter your phone, email, or @username'**
  String get loginPageTitle;

  /// No description provided for @phoneEmailOrUsername.
  ///
  /// In en, this message translates to:
  /// **'Phone, email, or username'**
  String get phoneEmailOrUsername;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
