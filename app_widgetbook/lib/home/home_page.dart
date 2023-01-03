import 'package:app/app.dart';
import 'package:app_widgetbook/dummy_data/dummy_tweets.dart';
import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(
  name: 'Default',
  type: HomePage,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Twitter-Clone---Widgetbook-Demo-App?node-id=245%3A5569&t=oryzXtTPwoD1v9cA-4',
)
Widget homePageDefaultUseCase(BuildContext context) {
  return HomePage(
    user: DummyUsers.widgetbook,
    homeFeed: DummyTweets.widgetbookHomeFeed,
  );
}
