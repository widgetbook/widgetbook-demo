import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Wrapper widget for [CachedNetworkImage] with customizable
/// loader and error widget
class AppCachedNetworkImage extends StatelessWidget {
  /// Creates a new instance of [AppCachedNetworkImage]
  const AppCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
  });

  /// The image url
  final String imageUrl;

  /// Image box fit
  ///
  /// Defaults to [BoxFit.cover]
  final BoxFit? fit;

  /// Image alignment
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      alignment: alignment,
      placeholderFadeInDuration: const Duration(milliseconds: 300),
      placeholder: (BuildContext context, String url) {
        return ColoredBox(
          color: Theme.of(context).highlightColor,
        );
      },
    );
  }
}
