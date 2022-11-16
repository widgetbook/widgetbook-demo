import 'package:auth/src/widgets/auth_buttons.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Authentication page
class AuthPage extends StatelessWidget {
  /// Creates Authentication page
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TwitterLogo(size: 27),
      ),
      body: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.authPageTitle,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
              const AuthButtons(),
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.termsText,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.haveAnAccountAlready,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  const SizedBox(width: 5),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Text(
                        AppLocalizations.of(context)!.logIn,
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: AppColors.primary,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
