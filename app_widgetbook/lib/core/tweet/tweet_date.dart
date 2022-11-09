import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: TweetDate)
Widget tweetDateDefaultuseCase(BuildContext context) {
  return TweetDate(
    date: getTweetDateOption(context),
  );
}
