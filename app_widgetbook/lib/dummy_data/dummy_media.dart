import 'package:core/core.dart';

/// Holds dummy media used for testing and the Widgetbook app
class DummyMedia {
  /// List of Media for a tweet with 4 images
  ///
  /// https://twitter.com/widgetbook_io/status/1470683773419278339
  static const List<Media> fourPhotosMedia = [
    Media(
      key: '3_1470683235671814146',
      type: MediaType.photo,
      url: 'https://pbs.twimg.com/media/FGjqnF9XMAIX0zi.jpg',
    ),
    Media(
      key: '3_1470683235688583170',
      type: MediaType.photo,
      url: 'https://pbs.twimg.com/media/FGjqnGBXEAIApJM.jpg',
    ),
    Media(
      key: '3_1470683235701202944',
      type: MediaType.photo,
      url: 'https://pbs.twimg.com/media/FGjqnGEXoAACPRt.jpg',
    ),
    Media(
      key: '3_1470683235680149505',
      type: MediaType.photo,
      url: 'https://pbs.twimg.com/media/FGjqnF_WYAE34ZZ.jpg',
    ),
  ];

  /// List of Media for a tweet with 4 images
  ///
  /// https://twitter.com/widgetbook_io/status/1482002838440103941
  static const List<Media> threePhotosMedia = [
    Media(
      key: '3_1482002430543994883',
      type: MediaType.photo,
      url: 'https://pbs.twimg.com/media/FJEhW8zXIAMyIyO.jpg',
    ),
    Media(
      key: '3_1482002430552387584',
      type: MediaType.photo,
      url: 'https://pbs.twimg.com/media/FJEhW81XMAAH4L_.jpg',
    ),
    Media(
      key: '3_1482002430548185094',
      type: MediaType.photo,
      url: 'https://pbs.twimg.com/media/FJEhW80XEAYrU6N.jpg',
    ),
  ];

  /// List of media for a tweet with 1 image
  ///
  /// https://twitter.com/widgetbook_io/status/1478381071486050312
  static const List<Media> singlePhotoMedia = [
    Media(
      key: '3_1478380555297345536',
      type: MediaType.photo,
      url: 'https://pbs.twimg.com/media/FIRDSEFX0AAh1cI.jpg',
    ),
  ];

  /// List of media for a tweet with a GIF
  ///
  /// https://twitter.com/widgetbook_io/status/1473588853135007746
  static const List<Media> gifMedia = [
    Media(
      key: '16_1473588204599136259',
      type: MediaType.gif,
      url: 'https://video.twimg.com/tweet_video/FHM8qihWUAM_TsU.mp4',
      previewImageUrl:
          'https://pbs.twimg.com/tweet_video_thumb/FHM8qihWUAM_TsU.jpg',
    ),
  ];
}
