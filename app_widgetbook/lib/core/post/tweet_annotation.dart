
// @WidgetbookUseCase(name: 'Default', type: TweetAnnotation)
// Widget tweetAnnotationDefaultUseCase(BuildContext context) {
//   final type = context.knobs.options<TweetAnnotationType>(
//     label: 'Type',
//     labelBuilder: (value) => value.name,
//     options: TweetAnnotationType.values,
//   );
//   return TweetAnnotation(
//     type: type,
//     user: type.hasUser
//         ? context.knobs.text(
//             label: 'User',
//             initialValue: 'John Doe',
//           )
//         : null,
//   );
// }
