import 'package:app_widgetbook/dummy_data/dummy_media.dart';
import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: CollapsedTweet)
Widget collapsedTweetDefaultUseCase(BuildContext context) {
  return CollapsedTweet(
    tweet: Tweet(
      rawText: context.knobs.text(
        label: 'Tweet Text',
        initialValue: 'Lorem ipsum dolor sit amit #hashtag @mention',
      ),
      user: DummyUsers.widgetbook,
      media: context.knobs.options(
        label: 'Media',
        options: [
          const Option(
            label: '4 Images',
            value: DummyMedia.fourPhotosMedia,
          ),
          Option(
            label: '3 Images',
            value: DummyMedia.fourPhotosMedia.take(3).toList(),
          ),/**/
          Option(
            label: '2 Images',
            value: DummyMedia.fourPhotosMedia.take(2).toList(),
          ),
          const Option(
            label: 'Image',
            value: DummyMedia.singlePhotoMedia,
          ),
          if (defaultTargetPlatform != TargetPlatform.macOS && kIsWeb)
            const Option(
              label: 'GIF',
              value: DummyMedia.gifMedia,
            ),
        ],
      ),
      publicMetrics: PublicMetrics(
        replies: context.knobs
            .slider(
              label: 'Replies',
              min: 0,
              max: 25000,
              initialValue: 15,
              divisions: 25000 ~/ 50,
            )
            .toInt(),
        retweets: context.knobs
            .slider(
              label: 'Retweets',
              min: 0,
              max: 25000,
              initialValue: 15,
              divisions: 25000 ~/ 50,
            )
            .toInt(),
        likes: context.knobs
            .slider(
              label: 'Likes',
              min: 0,
              max: 25000,
              initialValue: 15,
              divisions: 25000 ~/ 50,
            )
            .toInt(),
      ),
      createdAt: context.knobs.options(
        label: 'Created At',
        options: [
          Option(
            label: '12 hours ago',
            value: DateTime.now().subtract(
              const Duration(hours: 12),
            ),
          ),
          Option(
            label: '2 days ago',
            value: DateTime.now().subtract(
              const Duration(days: 2),
            ),
          ),
          Option(
            label: '2 years ago',
            value: DateTime.now().subtract(
              const Duration(days: 365 * 2),
            ),
          ),
        ],
      ),
    ),
  );
}
