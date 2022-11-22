import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// Use case for a Primary Button style
@WidgetbookUseCase(name: 'Custom', type: AppElevatedButton)
Widget customAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton(
    label: context.knobs.nullableText(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.options(
            label: 'Icon',
            options: buttonIconOptions,
          )
        : null,
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
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
  );
}

/// Use case for a Primary Button style
@WidgetbookUseCase(name: 'Primary Button', type: AppElevatedButton)
Widget primaryAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton.primary(
    label: context.knobs.nullableText(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.options(
            label: 'Icon',
            options: buttonIconOptions,
          )
        : null,
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
    onPressed: () {},
  );
}

/// Use case for a Secondary Button style
@WidgetbookUseCase(name: 'Secondary Button', type: AppElevatedButton)
Widget secondaryAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton.secondary(
    label: context.knobs.nullableText(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.options(
            label: 'Icon',
            options: buttonIconOptions,
          )
        : null,
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
    onPressed: () {},
  );
}

/// Use case for a Primary Outline Button style
@WidgetbookUseCase(name: 'Primary Outline Button', type: AppElevatedButton)
Widget primaryOutlineAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton.primaryOutline(
    label: context.knobs.nullableText(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.options(
            label: 'Icon',
            options: buttonIconOptions,
          )
        : null,
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
    onPressed: () {},
  );
}

/// Use case for a Secondary Outline Button style
@WidgetbookUseCase(name: 'Secondary Outline Button', type: AppElevatedButton)
Widget secondaryOutlineAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton.secondaryOutline(
    label: context.knobs.nullableText(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.options(
            label: 'Icon',
            options: buttonIconOptions,
          )
        : null,
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
    onPressed: () {},
  );
}
