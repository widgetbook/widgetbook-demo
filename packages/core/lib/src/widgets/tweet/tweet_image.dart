import 'package:core/core.dart';
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
    return LimitedBox(
      maxHeight: 800,
      child: AppCachedNetworkImage(
        imageUrl: imageUrl,
      ),
    );
  }
}
