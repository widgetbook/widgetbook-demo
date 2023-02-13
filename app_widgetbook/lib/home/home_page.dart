import 'package:app/app.dart';
import 'package:app_widgetbook/dummy_data/dummy_tweets.dart';
import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(
  name: 'Default',
  type: NewsPage,
  designLink:
      'https://www.figma.com/file/ZR4luBYaNYIy8JWel6DW4z/Flutter-Forward-Demo?node-id=2112%3A6754&t=M5jEccIes0k5oLjL-4',
)
Widget homePageDefaultUseCase(BuildContext context) {
  return NewsPage(
    user: DummyUsers.widgetbook,
    homeFeed: DummyTweets.widgetbookHomeFeed(context),
  );
}
