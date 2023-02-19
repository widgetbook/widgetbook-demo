import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Info of a detailed tweet (when a tweet is opened)
/// like Time, Date, and tweet source
class ExpandedTweetInfo extends StatelessWidget {
  /// Creates a new instance of [ExpandedTweetInfo]
  const ExpandedTweetInfo({
    super.key,
    required this.tweet,
  });

  /// The tweet data
  final Tweet tweet;

  /// Retrieves localized tweet source text
  String localizedSourceText(BuildContext context) {
    switch (tweet.source) {
      case TweetSource.web:
        return AppLocalizations.of(context)!.twitterWebApp;
      case TweetSource.iPhone:
        return AppLocalizations.of(context)!.twitterForIphone;
      case TweetSource.android:
        return AppLocalizations.of(context)!.twitterForAndroid;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FormattedDateTime(
          date: tweet.createdAt,
          isDateOnly: false,
        ),
        const Text(' · '),
        Text(
          localizedSourceText(context),
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.primary,
              ),
        )
      ],
    );
  }
}
