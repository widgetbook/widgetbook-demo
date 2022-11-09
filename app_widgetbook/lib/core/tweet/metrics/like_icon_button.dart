import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: LikeIconButton)
Widget likeIconButtnonDefaultUseCase(BuildContext context) {
  return LikeIconButton(
    onPressed: () {},
    isActive: context.knobs.boolean(label: 'Active'),
    size: context.knobs.slider(
      label: 'Icon Size',
      initialValue: 30,
      min: 15,
      max: 50,
    ),
  );
}
