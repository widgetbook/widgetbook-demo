import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// A quoted tweet widget
///
/// Usually inside a [CollapsedTweet] or [ExpandedTweet] widget
class QuotedTweet extends StatelessWidget {
  /// Creates a new instance of [QuotedTweet]
  const QuotedTweet({
    super.key,
    required this.tweet,
    this.isThread = false,
    this.isLargeMedia = true,
  });

  /// The tweet data
  final Tweet tweet;

  /// Whether this quoted tweet is a thread
  ///
  /// When `true` only `Show this thread` text will show
  final bool isThread;

  /// Whether the media
  final bool isLargeMedia;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Theme.of(context).dividerColor, width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  children: [
                    Avatar.smallest(
                      imageUrl: tweet.author.avatarUrl,
                    ),
                    const AppGap.xs(),
                    Expanded(
                      child: TweetHeader(
                        author: tweet.author,
                        tweetDate: tweet.createdAt,
                        hasInfoIconButton: false,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (!isLargeMedia && tweet.media.isNotEmpty)
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 90,
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(end: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: TweetMedia(
                                  tweetMedia: tweet.media,
                                  hasDecoration: false,
                                  autoPlay: false,
                                ),
                              ),
                            ),
                          ),
                        ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TweetText(
                              tweet.rawText.length > 120
                                  ? '${tweet.rawText.substring(0, 120)} ...'
                                  : tweet.rawText,
                              disabled: true,
                            ),
                            if (isThread)
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  AppLocalizations.of(context)!.showThisThread,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: AppColors.primary),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (isLargeMedia && tweet.media.isNotEmpty)
                TweetMedia(
                  tweetMedia: tweet.media,
                  hasDecoration: false,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
