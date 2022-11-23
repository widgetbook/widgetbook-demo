import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Login page widget
class LoginPage extends StatelessWidget {
  /// Creates login page widget
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 64,
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Text(
                                AppLocalizations.of(context)!.cancel,
                                style: Theme.of(context)
                                    .appBarTheme
                                    .titleTextStyle,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(
                          child: TwitterLogo(size: 27),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),
                  ),
                  const AppGap.lg(),
                  Text(
                    AppLocalizations.of(context)!.loginPageTitle,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const AppGap.md(),
                  TextFormField(
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? AppColors.white
                              : AppColors.black,
                        ),
                    decoration: InputDecoration(
                      label: Text(
                        AppLocalizations.of(context)!.phoneEmailOrUsername,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(AppLocalizations.of(context)!.forgotPassword),
                    Button.secondary(
                      label: AppLocalizations.of(context)!.next,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
