import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Images grid for tweet media with multiple images
///
/// The images count should be more than 1 and less or equal to 4
class TweetGallery extends StatelessWidget {
  /// Creates new instance of [TweetGallery]
  const TweetGallery({
    super.key,
    required this.imageUrls,
  })  : assert(
          imageUrls.length > 1,
          'Images count should be more than 1',
        ),
        assert(
          imageUrls.length <= 4,
          'Images count should not exceed 4',
        );

  /// List of the images URLs
  final List<String> imageUrls;

  @override
  Widget build(BuildContext context) {
    const gap = 2.0;
    return AspectRatio(
      aspectRatio: 1.9,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AppCachedNetworkImage(
                    imageUrl: imageUrls[0],
                  ),
                ),
                if (imageUrls.length == 4) const SizedBox(height: gap),
                if (imageUrls.length == 4)
                  Expanded(
                    child: AppCachedNetworkImage(
                      imageUrl: imageUrls[2],
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(width: gap),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AppCachedNetworkImage(
                    imageUrl: imageUrls[1],
                  ),
                ),
                if (imageUrls.length > 2) const SizedBox(height: gap),
                if (imageUrls.length > 2)
                  Expanded(
                    child: AppCachedNetworkImage(
                      imageUrl: imageUrls[imageUrls.length == 3 ? 2 : 3],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
