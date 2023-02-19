import 'package:core/core.dart';
import 'package:core/src/widgets/ui/app_video_player.dart';
import 'package:flutter/material.dart';

/// Widget for a tweet GIF media
class TweetGif extends StatelessWidget {
  /// Creates a new instance of [TweetGif]
  const TweetGif({
    super.key,
    required this.gifUrl,
    this.autoPlay = true,
  });

  /// Url of the GIF video
  final String gifUrl;

  /// If the GIF should auto play on widget build
  final bool autoPlay;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppVideoPlayer(
          url: gifUrl,
          autoPlay: autoPlay,
        ),
        PositionedDirectional(
          bottom: 10,
          start: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            decoration: BoxDecoration(
              color: AppColors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              'GIF',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
