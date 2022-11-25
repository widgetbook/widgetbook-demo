import 'package:app_widgetbook/dummy_data/dummy_users.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';
import 'package:widgetbook/widgetbook.dart' show Knobs, Option;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: ProfileAppBar)
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
          user: context.knobs.options(
            label: 'User',
            options: [
              Option(
                label: 'Widgetbook',
                value: DummyUsers.widgetbook,
              ),
              Option(
                label: 'Roaa',
                value: DummyUsers.roaakdm,
              ),
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

