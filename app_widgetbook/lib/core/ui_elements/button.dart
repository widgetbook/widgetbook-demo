import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// Use case for a Primary Button style
@WidgetbookUseCase(name: 'Primary Button', type: Button)
Widget primaryButtonUseCase(BuildContext context) {
  return Button.primary(
    label: context.knobs.text(
      label: 'Label',
      initialValue: 'Button',
    ),
    onPressed: () {},
  );
}

/// Use case for a Secondary Button style
@WidgetbookUseCase(name: 'Secondary Button', type: Button)
Widget secondaryButtonUseCase(BuildContext context) {
  return Button.secondary(
    label: context.knobs.text(
      label: 'Label',
      initialValue: 'Button',
    ),
    onPressed: () {},
  );
}

/// Use case for a Primary Outline Button style
@WidgetbookUseCase(name: 'Primary Outline Button', type: Button)
Widget primaryOutlineButtonUseCase(BuildContext context) {
  return Button.primaryOutline(
    label: context.knobs.text(
      label: context.knobs.text(
        label: 'Label',
        initialValue: 'Button',
      ),
      initialValue: 'Button',
    ),
    onPressed: () {},
  );
}

/// Use case for a Secondary Outline Button style
@WidgetbookUseCase(name: 'Secondary Outline Button', type: Button)
Widget secondaryOutlineButtonUseCase(BuildContext context) {
  return Button.secondaryOutline(
    label: context.knobs.text(
      label: context.knobs.text(
        label: 'Label',
        initialValue: 'Button',
      ),
      initialValue: 'Button',
    ),
    onPressed: () {},
  );
}
