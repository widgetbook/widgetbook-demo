import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// The source device/app of the tweet
enum TweetSource {
  /// Tweet was sent from a web app/browser
  web,

  /// Tweet was sent from an iPhone
  iPhone,

  /// Tweet was sent from an Android device
  android;

  /// Gets text for tweet source
  String getText(BuildContext context) {
    switch (this) {
      case web:
        return AppLocalizations.of(context)!.twitterWebApp;
      case iPhone:
        return AppLocalizations.of(context)!.twitterForIphone;
      case android:
        return AppLocalizations.of(context)!.twitterForAndroid;
    }
  }
}

/// Info of a detailed tweet (when a tweet is opened)
/// like Time, Date, and tweet source
class DetailedTweetInfo extends StatelessWidget {
  /// Creates a new instance of [DetailedTweetInfo]
  const DetailedTweetInfo({
    super.key,
    required this.tweetDate,
    required this.tweetSource,
  });

  /// The date of the tweet
  final DateTime tweetDate;

  /// The source device/app of the tweet
  final TweetSource tweetSource;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FormattedDateTime(
          date: tweetDate,
          isDateOnly: false,
        ),
        const Text(' · '),
        Text(
          tweetSource.getText(context),
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: AppColors.primary,
              ),
        )
      ],
    );
  }
}
