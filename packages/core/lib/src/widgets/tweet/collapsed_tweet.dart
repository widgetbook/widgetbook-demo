import 'package:core/core.dart';
import 'package:core/src/widgets/tweet/tweet_text.dart';
import 'package:flutter/material.dart';

/// Tweet component when collapsed (in feeds)
class CollapsedTweet extends StatelessWidget {
  /// Creates a new instance of [CollapsedTweet]
  const CollapsedTweet({
    super.key,
    required this.tweet,
  });

  /// The tweet data
  final Tweet tweet;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (tweet.annotationType != null)
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 30, bottom: 5),
            child: TweetAnnotation(type: tweet.annotationType!),
          ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Avatar(imageUrl: tweet.user.avatarUrl),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TweetHeader(
                    displayName: tweet.user.displayName,
                    username: tweet.user.username,
                    tweetDate: tweet.createdAt,
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
        )
      ],
    );
  }
}
