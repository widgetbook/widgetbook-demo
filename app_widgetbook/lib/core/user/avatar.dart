import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// User avatar default use case
@WidgetbookUseCase(name: 'Default', type: Avatar)
Widget avatarDefaultUseCase(BuildContext context) => Avatar(
      imageUrl: context.knobs.text(
        label: 'Image URL',
        initialValue:
            'https://pbs.twimg.com/profile_images/1446021572960133120/UZYljO51_400x400.jpg',
      ),
    );

/// User avatar small use case
@WidgetbookUseCase(
  name: 'Small',
  type: Avatar,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Twitter-Clone---Widgetbook-Demo-App?node-id=134%3A264&t=bS5eQkKjgII1vkpI-4',
)
Widget avatarSmallUseCase(BuildContext context) => Avatar.small(
      imageUrl: context.knobs.text(
        label: 'Image URL',
        initialValue: '',
      ),
    );

/// User avatar smaller use case
@WidgetbookUseCase(
  name: 'Smaller',
  type: Avatar,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Twitter-Clone---Widgetbook-Demo-App?node-id=139%3A836&t=bS5eQkKjgII1vkpI-4',
)
Widget avatarSmallerUseCase(BuildContext context) => Avatar.smaller(
      imageUrl: context.knobs.text(
        label: 'Image URL',
        initialValue: '',
      ),
    );

/// User avatar smallest use case
@WidgetbookUseCase(
  name: 'Smallest',
  type: Avatar,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Twitter-Clone---Widgetbook-Demo-App?node-id=260%3A3354&t=bS5eQkKjgII1vkpI-4',
)
Widget avatarSmallestUseCase(BuildContext context) => Avatar.smallest(
      imageUrl: context.knobs.nullableText(
        label: 'Image URL',
        initialValue: '',
      ),
    );
