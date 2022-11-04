import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Tweet media widget
///
/// This can be:
/// * Video
/// * GIF
/// * Images
/// * Card
class TweetMedia extends StatelessWidget {
  /// Creates a new instance of [TweetMedia]
  const TweetMedia({
    super.key,
    required this.tweetMedia,
  }) : assert(
          tweetMedia.length > 0,
          'Tweet media should not be empty',
        );

  /// The type of tweet media (Video, GIF, Images)
  final List<Media> tweetMedia;

  @override
  Widget build(BuildContext context) {
    late Widget mediaWidget;
    if (tweetMedia.length == 1) {
      switch (tweetMedia[0].type) {
        case MediaType.photo:
          mediaWidget = TweetImage(imageUrl: tweetMedia[0].url);
          break;
        case MediaType.gif:
          mediaWidget = Container();
          break;
        case MediaType.video:
          mediaWidget = Container();
          break;
      }
    } else {
      mediaWidget = TweetGallery(
        imageUrls: tweetMedia.map((media) => media.url).toList(),
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: mediaWidget,
    );
  }
}
