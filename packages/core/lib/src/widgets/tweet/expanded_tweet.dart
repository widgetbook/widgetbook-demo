import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Expanded tweet widget, usually accessed by clicking on the
/// [CollapsedTweet] widget
class ExpandedTweet extends StatelessWidget {
  /// Creates a new instance of [ExpandedTweet]
  const ExpandedTweet({
    super.key,
    required this.tweet,
  });

  /// The tweet data
  final Tweet tweet;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (tweet.annotationType != null)
            TweetAnnotation(type: tweet.annotationType!),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // Todo: Navigate to user profile
                  },
                  child: Row(
                    children: [
                      Avatar(
                        imageUrl: tweet.author.avatarUrl,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DisplayName.active(user: tweet.author),
                            const SizedBox(height: 3),
                            Username(user: tweet.author),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              AppIconButton(
                icon: const Icon(TwitterIcons.info),
                onPressed: () {},
                size: 14,
              ),
            ],
          ),
          const SizedBox(height: 20),
          TweetText(tweet.text),
          const SizedBox(height: 10),
          TweetMedia(tweetMedia: tweet.media),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: ExpandedTweetInfo(tweet: tweet),
          ),
          ExpandedTweetMetrics(metrics: tweet.publicMetrics),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: TweetActions(
              hideValues: true,
              onSharePressed: () {},
              onRepliesPressed: () {},
            ),
          ),
          const Divider(height: 1),
        ],
      ),
    );
  }
}
