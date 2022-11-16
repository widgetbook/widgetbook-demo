import 'package:app_widgetbook/dummy_data/dummy_media.dart';
import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

/// List of app color options that can be used with knobs
const List<Option<Color?>> colorOptions = [
  Option(
    label: 'Default',
    value: null,
  ),
  Option(
    label: 'Text Light',
    value: AppColors.textLight,
  ),
  Option(
    label: 'White',
    value: AppColors.whiteLight,
  ),
  Option(
    label: 'Primary',
    value: AppColors.primary,
  ),
  Option(
    label: 'Secondary',
    value: AppColors.secondary,
  ),
  Option(
    label: 'Success',
    value: AppColors.success,
  ),
  Option(
    label: 'Pink',
    value: AppColors.pink,
  ),
];

/// Predefined options knob for a tweet date
DateTime getTweetDateOption(
  BuildContext context, {
  String label = 'Date',
}) {
  return context.knobs.options<DateTime>(
    label: label,
    description: "The date should be a timeago string if it's "
        'less than 24 hours ago, and it should '
        "include the year only if it's different "
        'than the one we are currently in',
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
          const Duration(days: 365 * 3),
        ),
      ),
    ],
  );
}

/// Predefined options knob for a list of media
List<Media> getMediaOptions(
  BuildContext context, {
  String label = 'Media',
  String? description,
}) {
  return context.knobs.options<List<Media>>(
    label: label,
    description: description,
    options: [
      const Option(
        label: '4 Images',
        value: DummyMedia.fourPhotosMedia,
      ),
      Option(
        label: '3 Images',
        value: DummyMedia.fourPhotosMedia.take(3).toList(),
      ),
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
      const Option(
        label: 'No Media',
        value: [],
      ),
    ],
  );
}

/// Predefined sliders knobs for
/// likes, retweets, quote tweets, and replies metrics
PublicMetrics getPublicMetricsOptions(BuildContext context) {
  return PublicMetrics(
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
  );
}
