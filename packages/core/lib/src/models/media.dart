import 'package:core/core.dart';

/// Tweet Media object
class Media {
  /// Creates a new instance of [Media]
  const Media({
    required this.key,
    required this.url,
    required this.type,
    this.duration,
    this.previewImageUrl,
  });

  /// Media key
  ///
  /// Originally retrieved by a tweet lookup and used to
  /// retrieve more detailed Media data
  final String key;

  /// Media URL
  final String url;

  /// Type of media
  ///
  /// Possible values: photo,
  final MediaType type;

  /// Duration if the type is Video or GIF
  final int? duration;

  /// Static preview image for Video/GIF types
  final String? previewImageUrl;
}
