import 'package:app_widgetbook/dummy_data/dummy_media.dart';
import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Image', type: TweetMedia)
Widget tweetMediaImageUseCase(BuildContext context) {
  return TweetMedia(
    tweetMedia: DummyMedia.singlePhotoMedia,
  );
}

@WidgetbookUseCase(name: 'Gallery', type: TweetMedia)
Widget tweetMediaGalleryuseCase(BuildContext context) {
  return TweetMedia(
    tweetMedia: context.knobs.options(
      label: 'Image Count',
      options: [
        for (int i = 4; i >= 2; i--)
          Option(
            label: '$i Images',
            value: DummyMedia.fourPhotosMedia.take(i).toList(),
          ),
      ],
    ),
  );
}

@WidgetbookUseCase(name: 'GIF', type: TweetMedia)
Widget tweetMediaGIFuseCase(BuildContext context) {
  if (defaultTargetPlatform == TargetPlatform.macOS && !kIsWeb) {
    return const Center(
      child: Text(
        'Video player is not supported on MacOS ☹️',
      ),
    );
  } else {
    return TweetMedia(
      tweetMedia: DummyMedia.gifMedia,
      autoPlay: context.knobs.boolean(
        label: 'Auto Play',
        description: 'Turning off Auto Play will'
            ' show a Play button',
        initialValue: true,
      ),
    );
  }
}
