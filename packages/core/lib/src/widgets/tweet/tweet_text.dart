import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

/// Widget for the text of a tweet with configurations for
/// links, hashtags, and mentions.
class TweetText extends StatelessWidget {
  /// Creates a new instance of [TweetText]
  const TweetText(
    this.text, {
    super.key,
  });

  /// The text of the tweet
  final String text;

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      data: text,
      styleSheet: MarkdownStyleSheet(
        p: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.w400,
              height: 1.3,
            ),
      ),
      onTapLink: (String text, String? href, String title) {
        log('text: $text, link: ${href ?? ''}');
      },
    );
  }
}
