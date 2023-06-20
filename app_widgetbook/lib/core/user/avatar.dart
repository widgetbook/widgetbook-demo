import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// User avatar default use case
@UseCase(
  name: 'Default',
  type: Avatar,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=134%3A263&t=Gl5k0fxkBVOqre4i-4',
)
Widget avatarDefaultUseCase(BuildContext context) => Avatar(
      imageUrl: context.knobs.string(
        label: 'Image URL',
        initialValue:
            'https://pbs.twimg.com/profile_images/1446021572960133120/UZYljO51_400x400.jpg',
      ),
    );

/// User avatar small use case
@UseCase(
  name: 'Small',
  type: Avatar,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=134%3A263&t=Gl5k0fxkBVOqre4i-4',
)
Widget avatarSmallUseCase(BuildContext context) => Avatar.small(
      imageUrl: context.knobs.string(
        label: 'Image URL',
      ),
    );

/// User avatar smaller use case
@UseCase(
  name: 'Smaller',
  type: Avatar,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=134%3A263&t=Gl5k0fxkBVOqre4i-4',
)
Widget avatarSmallerUseCase(BuildContext context) => Avatar.smaller(
      imageUrl: context.knobs.string(
        label: 'Image URL',
      ),
    );

/// User avatar smallest use case
@UseCase(
  name: 'Smallest',
  type: Avatar,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=134%3A263&t=Gl5k0fxkBVOqre4i-4',
)
Widget avatarSmallestUseCase(BuildContext context) => Avatar.smallest(
      imageUrl: context.knobs.string(
        label: 'Image URL',
      ),
    );
