import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Tweet component when collapsed (in feeds)
class CollapsedTweet extends StatelessWidget {
  /// Creates a new instance of [CollapsedTweet]
  const CollapsedTweet({
    super.key,
    required this.tweet,
    this.isThread = false,
    this.onShowThisThread,
    this.onShowMoreReplies,
  });

  /// The tweet data
  final Tweet tweet;

  /// Whether this tweet is part of a thread
  ///
  /// If `true`, a vertical line bellow the avatar appears
  final bool isThread;

  /// OnPressed callback for `Show this thread` text
  ///
  /// If null, the section will not appear
  final VoidCallback? onShowThisThread;

  /// OnPressed callback for `Show more replies` text
  ///
  /// If null, the section will not appear
  final VoidCallback? onShowMoreReplies;

  static const double _verticalLineGap = 4;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Todo: navigate to expanded tweet
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (tweet.annotationType != null)
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 30, bottom: 5),
              child: TweetAnnotation(type: tweet.annotationType!),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      Avatar(imageUrl: tweet.author.avatarUrl),
                      if (isThread)
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: _verticalLineGap),
                            child: VerticalDivider(thickness: 2),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TweetHeader(
                          author: tweet.author,
                          tweetDate: tweet.createdAt,
                        ),
                        if (tweet.inReplyToUser != null)
                          Row(
                            children: [
                              Text(AppLocalizations.of(context)!.replyingTo),
                              const SizedBox(width: 4),
                              Username.active(user: tweet.inReplyToUser!),
                            ],
                          ),
                        TweetText(tweet.text),
                        const SizedBox(height: 10),
                        TweetMedia(tweetMedia: tweet.media),
                        const SizedBox(height: 10),
                        TweetActions(
                          publicMetrics: tweet.publicMetrics,
                          onSharePressed: () {},
                          onRepliesPressed: () {},
                          onLikesChanged: (_) {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (onShowThisThread != null)
            InkWell(
              onTap: onShowThisThread,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: _verticalLineGap,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 55,
                      child: Center(
                        child: Avatar.smaller(imageUrl: tweet.author.avatarUrl),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.showThisThread,
                        style: Theme.of(context)
                            .primaryTextTheme
                            .bodyText2!
                            .copyWith(
                              color: AppColors.primary,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (onShowMoreReplies != null)
            InkWell(
              onTap: onShowMoreReplies,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        width: 55,
                        child: Center(
                          child: Column(
                            children: List.generate(
                              3,
                              (index) => const Expanded(
                                child: VerticalDivider(
                                  indent: 2,
                                  endIndent: 2,
                                  thickness: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          AppLocalizations.of(context)!.showMoreReplies,
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyText2!
                              .copyWith(
                                color: AppColors.primary,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
