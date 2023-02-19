import 'dart:developer';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// Widget for the text of a tweet with configurations for
/// links, hashtags, and mentions.
class TweetText extends StatelessWidget {
  /// Creates a new instance of [TweetText]
  const TweetText(
    this.text, {
    super.key,
    this.disabled = false,
  });

  /// The text of the tweet
  final String text;

  /// Whether this text is disabled
  ///
  /// If `true`, the hashtags, mentions, and links will not be primary
  /// colored nor clickable
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      data: text,
      styleSheet: MarkdownStyleSheet(
        p: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w400,
              height: 1.3,
            ),
        a: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w400,
              height: 1.3,
              color: disabled
                  ? Theme.of(context).textTheme.bodyLarge!.color
                  : AppColors.primary,
            ),
      ),
      onTapLink: disabled
          ? null
          : (String text, String? href, String title) {
              log('text: $text, link: ${href ?? ''}');
            },
    );
  }
}
