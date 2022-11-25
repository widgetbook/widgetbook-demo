import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      title: Column(
        children: [
          DisplayName(user: user),
        ],
      ),
    );
  }
}
