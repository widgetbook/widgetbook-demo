import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Default', type: AppBottomNavigationBar)
Widget appBottomNavigationBarDefaultUseCase(BuildContext context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: AppBottomNavigationBar(
      currentIndex: context.knobs.double
          .slider(
            label: 'Active Tab',
            initialValue: 0,
            min: 0,
            max: 3,
            divisions: 3,
          )
          .toInt(),
      onItemChanged: (_) {},
    ),
  );
}
