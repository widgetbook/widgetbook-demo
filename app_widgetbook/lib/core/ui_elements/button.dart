import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// Use case for a Primary Button style
@WidgetbookUseCase(name: 'Custom', type: Button)
Widget customButtonUseCase(BuildContext context) {
  return Button(
    label: context.knobs.text(
      label: 'Label',
      initialValue: 'Button',
    ),
    onPressed: () {},
    borderColor: context.knobs.options<Color?>(
      label: 'Border Color',
      options: const [
        Option(
          label: 'None',
          value: null,
        ),
        Option(
          label: 'Primary',
          value: AppColors.primary,
        ),
        Option(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
        Option(
          label: 'Pink',
          value: AppColors.pink,
        ),
        Option(
          label: 'White',
          value: AppColors.white,
        ),
      ],
    ),
    backgroundColor: context.knobs.options<Color?>(
      label: 'Background Color',
      options: const [
        Option(
          label: 'Primary',
          value: AppColors.primary,
        ),
        Option(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
        Option(
          label: 'Pink',
          value: AppColors.pink,
        ),
        Option(
          label: 'White',
          value: AppColors.white,
        ),
      ],
    ),
    textColor: context.knobs.options<Color?>(
      label: 'Text Color',
      options: const [
        Option(
          label: 'White',
          value: AppColors.white,
        ),
        Option(
          label: 'Primary',
          value: AppColors.primary,
        ),
        Option(
          label: 'Secondary',
          value: AppColors.secondary,
        ),
        Option(
          label: 'Pink',
          value: AppColors.pink,
        ),
      ],
    ),
    height: context.knobs.options<double>(
      label: 'Size',
      options: const [
        Option(label: 'Default', value: 40),
        Option(label: 'Large', value: 56),
      ],
    ),
  );
}

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
      label: 'Label',
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
      label: 'Label',
      initialValue: 'Button',
    ),
    onPressed: () {},
  );
}
