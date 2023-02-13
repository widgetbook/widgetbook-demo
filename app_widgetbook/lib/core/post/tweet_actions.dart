
// @WidgetbookUseCase(name: 'Default', type: TweetActions)
// Widget tweetActionsDefaultUseCase(BuildContext context) {
//   return TweetActions(
//     hideValues: context.knobs.boolean(label: 'Hide Values'),
//     publicMetrics: PublicMetrics(
//       replies: context.knobs
//           .slider(
//             label: 'Replies',
//             min: 0,
//             max: 25000,
//             initialValue: 15,
//             divisions: 25000 ~/ 50,
//           )
//           .toInt(),
//       retweets: context.knobs
//           .slider(
//             label: 'Retweets',
//             min: 0,
//             max: 25000,
//             initialValue: 15,
//             divisions: 25000 ~/ 50,
//           )
//           .toInt(),
//       likes: context.knobs
//           .slider(
//             label: 'Likes',
//             min: 0,
//             max: 25000,
//             initialValue: 15,
//             divisions: 25000 ~/ 50,
//           )
//           .toInt(),
//     ),
//     onSharePressed: () {},
//     onRepliesPressed: () {},
//   );
// }
