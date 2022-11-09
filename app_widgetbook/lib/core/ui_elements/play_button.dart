import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// [PlayButton] default use case
@WidgetbookUseCase(name: 'Default', type: PlayButton)
Widget playButtonUseCase(BuildContext context) => PlayButton(
      onPressed: () {},
    );
