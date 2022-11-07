import 'package:core/src/styles/app_colors.dart';
import 'package:flutter/material.dart';

/// Twitter's Video Play button
class PlayButton extends StatelessWidget {
  /// Creates a new instance of [PlayButton]
  const PlayButton({
    super.key,
    this.onPressed,
  });

  /// Press callback
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    const size = 40.0;
    const border = 3.0;
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: border, color: AppColors.white),
      ),
      position: DecorationPosition.foreground,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size / 2),
        child: Material(
          borderRadius: BorderRadius.circular(size / 2),
          color: AppColors.primary,
          child: Container(
            width: size,
            height: size,
            alignment: Alignment.center,
            child: IconButton(
              onPressed: onPressed,
              hoverColor: AppColors.black.withOpacity(0.1),
              icon: const Icon(
                Icons.play_arrow_rounded,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
