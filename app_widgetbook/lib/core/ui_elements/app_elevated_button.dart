import 'package:app_widgetbook/utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// Use case for a Primary Button style
@UseCase(name: 'Custom', type: AppElevatedButton)
Widget customAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton(
    label: context.knobs.stringOrNull(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.list(
            label: 'Icon',
            options: buttonIconOptions,
          )
        : null,
    onPressed: () {},
    borderColor: context.knobs.list<Color?>(
      label: 'Border Color',
      labelBuilder: (value) {
        if (value == null) return 'None';
        return value.value.toRadixString(16);
      },
      options: const [
        null,
        AppColors.primary,
        AppColors.secondary,
        AppColors.pink,
        AppColors.white,
      ],
    ),
    backgroundColor: context.knobs.list<Color?>(
      label: 'Background Color',
      labelBuilder: (value) {
        if (value == null) return 'null';
        return value.value.toRadixString(16);
      },
      options: const [
        null,
        AppColors.primary,
        AppColors.secondary,
        AppColors.pink,
        AppColors.white,
      ],
    ),
    textColor: context.knobs.list<Color?>(
      label: 'Text Color',
      labelBuilder: (value) {
        if (value == null) return 'null';
        return value.value.toRadixString(16);
      },
      options: const [
        null,
        AppColors.primary,
        AppColors.secondary,
        AppColors.pink,
        AppColors.white,
      ],
    ),
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
  );
}

/// Use case for a Primary Button style
@UseCase(name: 'Primary Button', type: AppElevatedButton)
Widget primaryAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton.primary(
    label: context.knobs.stringOrNull(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.list(
            label: 'Icon',
            options: buttonIconOptions,
          )
        : null,
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
    onPressed: () {},
  );
}

/// Use case for a Secondary Button style
@UseCase(name: 'Secondary Button', type: AppElevatedButton)
Widget secondaryAppElevatedButtonUseCase(BuildContext context) {
  return Scaffold(
    appBar: AppBar(),
    body: AppElevatedButton.secondary(
      label: context.knobs.stringOrNull(
        label: 'Label',
        initialValue: 'Button',
      ),
      icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
          ? context.knobs.list(
              label: 'Icon',
              options: buttonIconOptions,
            )
          : null,
      height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
      onPressed: () {},
    ),
  );
}

/// Use case for a Primary Outline Button style
@UseCase(name: 'Primary Outline Button', type: AppElevatedButton)
Widget primaryOutlineAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton.primaryOutline(
    label: context.knobs.stringOrNull(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.list(
            label: 'Icon',
            options: buttonIconOptions,
          )
        : null,
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
    onPressed: () {},
  );
}

/// Use case for a Secondary Outline Button style
@UseCase(name: 'Secondary Outline Button', type: AppElevatedButton)
Widget secondaryOutlineAppElevatedButtonUseCase(BuildContext context) {
  return AppElevatedButton.secondaryOutline(
    label: context.knobs.stringOrNull(
      label: 'Label',
      initialValue: 'Button',
    ),
    icon: context.knobs.boolean(label: 'Has Icon', initialValue: true)
        ? context.knobs.list(
            label: 'Icon',
            options: buttonIconOptions,
          )
        : null,
    height: context.knobs.boolean(label: 'Is Large') ? 56 : 40,
    onPressed: () {},
  );
}
