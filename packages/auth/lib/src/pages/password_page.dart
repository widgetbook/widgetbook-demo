import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Page where the user enters their password when logging in
class PasswordPage extends StatelessWidget {
  /// Creates page where the user enters their password when logging in
  const PasswordPage({
    super.key,
    required this.userInput,
  });

  /// The userInput entered in the previous step
  ///
  /// This can be a phone number, email, or user name
  final String userInput;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).brightness == Brightness.dark
        ? AppColors.white
        : AppColors.black;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                            style: Theme.of(context).appBarTheme.titleTextStyle,
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
              const SizedBox(height: 30),
              Text(
                AppLocalizations.of(context)!.enterYourPassword,
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: textColor,
                    ),
                initialValue: userInput,
                enabled: false,
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: textColor,
                    ),
                decoration: InputDecoration(
                  label: Text(AppLocalizations.of(context)!.password),
                  suffixIcon: IconButton(
                    icon: const Icon(TwitterIcons.eye_crossed, size: 20),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 70),
              AppElevatedButton.secondary(
                label: AppLocalizations.of(context)!.logIn,
                onPressed: () {},
                height: 56,
              ),
              const SizedBox(height: 30),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      AppLocalizations.of(context)!.forgotPassword,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
