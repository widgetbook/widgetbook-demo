import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: PasswordPage)
Widget passwordPageDefaultUseCase(BuildContext context) {
  return PasswordPage(
    userInput: context.knobs.text(
      label: 'Login User Input',
      description: 'The user input from the previous login step. '
          'This can be a phone number, email, or username',
      initialValue: 'johndoe',
    ),
  );
}
