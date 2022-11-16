import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Widget for Authentication Buttons
class AuthButtons extends StatelessWidget {
  /// Creates widget for Authentication Buttons
  const AuthButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Button.secondaryOutline(
          label: AppLocalizations.of(context)!.continueWithGoogle,
          icon: TwitterIcons.google,
          onPressed: () {},
          height: 56,
        ),
        const SizedBox(height: 20),
        Button.secondaryOutline(
          label: AppLocalizations.of(context)!.continueWithApple,
          icon: TwitterIcons.apple,
          onPressed: () {},
          height: 56,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Expanded(child: Divider(height: 1)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(AppLocalizations.of(context)!.or),
            ),
            const Expanded(child: Divider(height: 1)),
          ],
        ),
        const SizedBox(height: 5),
        Button.secondary(
          label: AppLocalizations.of(context)!.createAccount,
          onPressed: () {},
          height: 56,
        ),
      ],
    );
  }
}
