import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

/// Wrapper widget for a video player
class AppVideoPlayer extends StatefulWidget {
  /// Creates a new instance of [AppVideoPlayer]
  const AppVideoPlayer({
    super.key,
    required this.url,
    this.autoPlay = false,
    this.hasPlayButton = true,
  });

  /// Video url
  final String url;

  /// If the video should auto play on widget build
  final bool autoPlay;

  /// If the video player has a centered Play button
  ///
  /// The play button will appear only if [autoPlay] is `false`
  final bool hasPlayButton;

  @override
  State<AppVideoPlayer> createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends State<AppVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is
        // initialized, even before the play button has been pressed.
        setState(() {});
        if (widget.autoPlay) {
          _controller
            ..setLooping(true)
            ..play();
        }
      });
  }

  @override
  void didUpdateWidget(covariant AppVideoPlayer oldWidget) {
    if (oldWidget.autoPlay != widget.autoPlay &&
        _controller.value.isInitialized) {
      if (!widget.autoPlay && _controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: Stack(
              children: [
                VideoPlayer(_controller),
                if (widget.hasPlayButton &&
                    !widget.autoPlay &&
                    !_controller.value.isPlaying)
                  Positioned.fill(
                    child: Center(
                      child: PlayButton(
                        onPressed: () {
                          if (!_controller.value.isPlaying) {
                            _controller.play();
                            setState(() {});
                          }
                        },
                      ),
                    ),
                  ),
              ],
            ),
          )
        : Container();
  }
}
