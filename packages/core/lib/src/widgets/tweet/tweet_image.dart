import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Tweet image widget
class TweetImage extends StatelessWidget {
  /// Creates a new instance of [TweetImage]
  const TweetImage({
    super.key,
    required this.imageUrl,
  });

  /// Url of the tweet's image
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 800,
        minHeight: 200,
      ),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
