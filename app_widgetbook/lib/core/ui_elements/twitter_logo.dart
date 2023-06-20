import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: TwitterLogo)
Widget twitterLogoDefaultUseCase(BuildContext context) {
  return TwitterLogo(
    size: context.knobs.double.slider(
      label: 'Size',
      initialValue: 36,
      min: 36,
      max: 200,
      divisions: (200 / 10).ceil(),
    ),
  );
}
