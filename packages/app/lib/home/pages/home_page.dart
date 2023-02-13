import 'package:core/core.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key,
    required this.user,
    required this.homeFeed,
  });

  final User user;

  final List<Tweet> homeFeed;

  @override
  Widget build(BuildContext context) {
    return DrawerPageWrapper(
      appBarTitle: const Text('News'),
      body: ListView.builder(
        itemCount: homeFeed.length,
        itemBuilder: (context, index) => CollapsedTweet(
          tweet: homeFeed[index],
        ),
      ),
      user: user,
    );
  }
}
