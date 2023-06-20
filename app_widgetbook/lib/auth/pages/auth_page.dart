import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: AuthPage)
Widget authPageDefaultUseCase(BuildContext context) {
  return const AuthPage();
}
