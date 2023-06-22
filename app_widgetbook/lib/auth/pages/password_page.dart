import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: PasswordPage,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=326-6816&t=wNWmUVdFMwf9tsLL-4',
)
Widget passwordPageDefaultUseCase(BuildContext context) {
  return PasswordPage(
    userInput: context.knobs.string(
      label: 'Login User Input',
      description: 'The user input from the previous login step. '
          'This can be a phone number, email, or username',
      initialValue: 'johndoe',
    ),
  );
}
