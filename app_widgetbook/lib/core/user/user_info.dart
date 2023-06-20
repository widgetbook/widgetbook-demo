import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: UserInfo,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=197%3A1729&t=bCZtYXCKMQ9kkAPS-4',
)
Widget userInfoDefaultUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: UserInfo(
      DummyUsers.widgetbook,
      isExpanded: context.knobs.boolean(label: 'Expanded', initialValue: true),
      onTap: () {},
    ),
  );
}
