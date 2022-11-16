import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: AuthButtons)
Widget authButtonsDefaultUseCase(BuildContext context) {
  return AuthButtons();
}
