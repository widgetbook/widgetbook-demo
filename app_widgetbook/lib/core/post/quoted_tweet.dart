
// @WidgetbookUseCase(name: 'Large Media', type: QuotedTweet)
// Widget quotedTweetLargeMediaUseCase(BuildContext context) {
//   return Padding(
//     padding: const EdgeInsets.all(20),
//     child: QuotedTweet(
//       tweet: Tweet(
//         rawText: context.knobs.text(
//           label: 'Tweet Text',
//           initialValue: 'Lorem ipsum dolor sit amit #hashtag @mention',
//         ),
//         author: DummyUsers.widgetbook,
//         media: getMediaOptions(context),
//         createdAt: getTweetDateOption(context),
//         source: TweetSource.iPhone,
//       ),
//       isThread: context.knobs.boolean(
//         label: 'Is Thread',
//         initialValue: true,
//       ),
//     ),
//   );
// }

// @WidgetbookUseCase(name: 'Thumbnail Media', type: QuotedTweet)
// Widget quotedTweetThumbnailMediaUseCase(BuildContext context) {
//   return Padding(
//     padding: const EdgeInsets.all(20),
//     child: QuotedTweet(
//       tweet: Tweet(
//         rawText: context.knobs.text(
//           label: 'Tweet Text',
//           initialValue: 'Lorem ipsum dolor sit amit #hashtag @mention',
//         ),
//         author: DummyUsers.widgetbook,
//         media: getMediaOptions(context),
//         createdAt: getTweetDateOption(context),
//         source: TweetSource.iPhone,
//       ),
//       isLargeMedia: false,
//       isThread: context.knobs.boolean(
//         label: 'Is Thread',
//         initialValue: true,
//       ),
//     ),
//   );
// }
