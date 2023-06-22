import 'package:app/app.dart';
import 'package:app_widgetbook/dummy_data/dummy_tweets.dart';
import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: HomePage)
Widget homePageDefaultUseCase(BuildContext context) {
  return MediaQuery(
    data: MediaQuery.of(context).copyWith(
      size: const Size(390, 844),
    ),
    child: HomePage(
      user: DummyUsers.widgetbook,
      homeFeed: DummyTweets.widgetbookHomeFeed,
    ),
  );
}
