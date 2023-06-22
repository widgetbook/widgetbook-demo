import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: AuthPage,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=316-6675&t=wNWmUVdFMwf9tsLL-4',
)
Widget authPageDefaultUseCase(BuildContext context) {
  return const AuthPage();
}
