import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(
  name: 'Default',
  type: AuthButtons,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=334%3A7021&t=TUtcSZxxeTbrf3zM-4',
)
Widget authButtonsDefaultUseCase(BuildContext context) {
  return const AuthButtons();
}
