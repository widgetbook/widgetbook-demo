import 'package:app_widgetbook/dummy_data/dummy_media.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:widgetbook/widgetbook.dart';

/// List of app color options that can be used with knobs
const List<Color?> colorOptions = [
  null,
  AppColors.textLight,
  AppColors.whiteLight,
  AppColors.primary,
  AppColors.secondary,
  AppColors.success,
  AppColors.pink,
];

/// Predefined options knob for a tweet date
DateTime getTweetDateOption(
  BuildContext context, {
  String label = 'Date',
}) {
  return context.knobs.list<DateTime>(
    label: label,
    description: "The date should be a timeago string if it's "
        'less than 24 hours ago, and it should '
        "include the year only if it's different "
        'than the one we are currently in',
    labelBuilder: timeago.format,
    options: [
      DateTime.now().subtract(
        const Duration(hours: 12),
      ),
      DateTime.now().subtract(
        const Duration(days: 2),
      ),
      DateTime.now().subtract(
        const Duration(days: 365 * 3),
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
  return context.knobs.list<List<Media>>(
    label: label,
    description: description,
    labelBuilder: (value) => '${value.length} images',
    options: [
      DummyMedia.fourPhotosMedia,
      DummyMedia.fourPhotosMedia.take(3).toList(),
      DummyMedia.fourPhotosMedia.take(2).toList(),
      DummyMedia.singlePhotoMedia,
      DummyMedia.gifMedia,
      [],
    ],
  );
}

/// Predefined sliders knobs for
/// likes, retweets, quote tweets, and replies metrics
PublicMetrics getPublicMetricsOptions(BuildContext context) {
  return PublicMetrics(
    replies: context.knobs.double
        .slider(
          label: 'Replies',
          min: 0,
          max: 25000,
          initialValue: 15,
          divisions: 25000 ~/ 50,
        )
        .toInt(),
    retweets: context.knobs.double
        .slider(
          label: 'Retweets',
          min: 0,
          max: 25000,
          initialValue: 15,
          divisions: 25000 ~/ 50,
        )
        .toInt(),
    likes: context.knobs.double
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

/// Predefined list of icons for options knob
const List<IconData> iconOptions = [
  TwitterIcons.home,
  TwitterIcons.bell,
  TwitterIcons.mail,
  TwitterIcons.bookmark,
  TwitterIcons.user,
];

/// Predefined list of icons for options knob of AppElevatedButton use cases
const List<IconData> buttonIconOptions = [
  TwitterIcons.plus,
  TwitterIcons.add_feather_fill,
];
