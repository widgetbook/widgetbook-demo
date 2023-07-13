import 'package:app_widgetbook/dummy_data/dummy_media.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Image',
  type: TweetMedia,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?type=design&node-id=204-1822&t=aXDXkBsaFxCTxdac-4',
)
Widget tweetMediaImageUseCase(BuildContext context) {
  return TweetMedia(
    tweetMedia: DummyMedia.singlePhotoMedia,
    hasDecoration: context.knobs.boolean(
      label: 'Has Decoration',
      initialValue: true,
    ),
  );
}

@UseCase(
  name: 'Gallery',
  type: TweetMedia,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?type=design&node-id=207-1638&t=aXDXkBsaFxCTxdac-4',
)
Widget tweetMediaGalleryUseCase(BuildContext context) {
  return TweetMedia(
    tweetMedia: context.knobs.list(
      label: 'Image Count',
      options: [
        for (int i = 4; i >= 2; i--)
          DummyMedia.fourPhotosMedia.take(i).toList(),
      ],
      labelBuilder: (value) => '${value.length} images',
    ),
    hasDecoration: context.knobs.boolean(
      label: 'Has Decoration',
      initialValue: true,
    ),
  );
}

@UseCase(
  name: 'GIF',
  type: TweetMedia,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?type=design&node-id=204-1844&t=aXDXkBsaFxCTxdac-4',
)
Widget tweetMediaGIFUseCase(BuildContext context) {
  return TweetMedia(
    tweetMedia: DummyMedia.gifMedia,
    autoPlay: context.knobs.boolean(
      label: 'Auto Play',
      description: 'Turning off Auto Play will'
          ' show a Play button',
      initialValue: true,
    ),
    hasDecoration: context.knobs.boolean(
      label: 'Has Decoration',
      initialValue: true,
    ),
  );
}
