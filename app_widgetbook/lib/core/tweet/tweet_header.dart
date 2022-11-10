import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: TweetHeader)
Widget tweetHeaderDefaultUseCase(BuildContext context) {
  return TweetHeader(
    author: User(
      displayName: context.knobs.text(
        label: 'Display Name',
        initialValue: 'John Doe',
      ),
      username: context.knobs.text(
        label: 'Username',
        initialValue: 'johndoe',
      ),
      id: '',
    ),
    tweetDate: getTweetDateOption(context),
  );
}
