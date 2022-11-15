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
    this.autoPlay = true,
    this.hasDecoration = true,
  }) : assert(
          tweetMedia.length > 0,
          'Tweet media should not be empty',
        );

  /// The type of tweet media (Video, GIF, Images)
  final List<Media> tweetMedia;

  /// If GIF/Video media should autoPlay
  ///
  /// Defaults to `true`, allowing videos and GIFs to
  /// auto play as soon as the widget is built.
  ///
  /// Optimally, when this is true, this widget should be included
  /// in the widget tree in a way such that it doesn't
  /// get built unless it is visible (e.g. child of [ListView.builder])
  final bool autoPlay;

  /// Whether the media has a border and borderRadius decoration
  final bool hasDecoration;

  @override
  Widget build(BuildContext context) {
    late Widget mediaWidget;
    if (tweetMedia.length == 1) {
      switch (tweetMedia[0].type) {
        case MediaType.photo:
          mediaWidget = TweetImage(imageUrl: tweetMedia[0].url);
          break;
        case MediaType.gif:
          mediaWidget = TweetGif(
            gifUrl: tweetMedia[0].url,
            autoPlay: autoPlay,
          );
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
    if (hasDecoration) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border:
                Border.all(color: Theme.of(context).dividerColor, width: 0.5),
            borderRadius: BorderRadius.circular(15),
          ),
          child: mediaWidget,
        ),
      );
    } else {
      return mediaWidget;
    }
  }
}
