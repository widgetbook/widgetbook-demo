import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(
  name: 'Default',
  type: LoginPage,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=319-7064&t=wNWmUVdFMwf9tsLL-4',
)
Widget loginPageDefaultUseCase(BuildContext context) {
  return const LoginPage();
}
