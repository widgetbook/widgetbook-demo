import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(
  name: 'Default',
  type: ProfileAppBar,
  designLink:
      'https://www.figma.com/file/taoQSMi6WeUgzEoZvZmHmI/Widgetbook-Demo-App?node-id=289-5483&t=fXqvNNhTsB9AQ0oS-4',
)
Widget profileAppBarDefaultUseCase(BuildContext context) {
  return ProfileAppBarWrapper();
}

class ProfileAppBarWrapper extends StatefulWidget {
  const ProfileAppBarWrapper({super.key});

  @override
  State<ProfileAppBarWrapper> createState() => _ProfileAppBarWrapperState();
}

class _ProfileAppBarWrapperState extends State<ProfileAppBarWrapper> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        ProfileAppBar(
          scrollController: scrollController,
          user: context.knobs.options<User>(
            label: 'User',
            labelBuilder: (user) => user.displayName,
            options: [
              DummyUsers.widgetbook,
              DummyUsers.roaakdm,
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 1000,
          ),
        ),
      ],
    );
  }
}
