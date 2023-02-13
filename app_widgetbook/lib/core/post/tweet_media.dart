
// @WidgetbookUseCase(name: 'Image', type: TweetMedia)
// Widget tweetMediaImageUseCase(BuildContext context) {
//   return TweetMedia(
//     tweetMedia: DummyMedia.singlePhotoMedia,
//     hasDecoration: context.knobs.boolean(
//       label: 'Has Decoration',
//       initialValue: true,
//     ),
//   );
// }

// @WidgetbookUseCase(name: 'Gallery', type: TweetMedia)
// Widget tweetMediaGalleryUseCase(BuildContext context) {
//   return TweetMedia(
//     tweetMedia: context.knobs.options(
//       label: 'Image Count',
//       labelBuilder: (value) => '${value.length} image(s)',
//       options: [
//         for (int i = 4; i >= 2; i--) DummyMedia.fourPhotosMedia.take(i).toList()
//       ],
//     ),
//     hasDecoration: context.knobs.boolean(
//       label: 'Has Decoration',
//       initialValue: true,
//     ),
//   );
// }

// @WidgetbookUseCase(name: 'GIF', type: TweetMedia)
// Widget tweetMediaGIFUseCase(BuildContext context) {
//   return TweetMedia(
//     tweetMedia: DummyMedia.gifMedia,
//     autoPlay: context.knobs.boolean(
//       label: 'Auto Play',
//       description: 'Turning off Auto Play will'
//           ' show a Play button',
//       initialValue: true,
//     ),
//     hasDecoration: context.knobs.boolean(
//       label: 'Has Decoration',
//       initialValue: true,
//     ),
//   );
// }
