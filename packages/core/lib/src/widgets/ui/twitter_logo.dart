import 'package:flutter/material.dart';

/// Widget for the Twitter Logo
class TwitterLogo extends StatelessWidget {
  /// Creates widget for the Twitter Logo
  const TwitterLogo({
    super.key,
    this.size = 36,
  });

  /// Width and Height of the logo
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/twitter-logo.png',
      package: 'core',
      width: size,
      height: size,
    );
  }
}
