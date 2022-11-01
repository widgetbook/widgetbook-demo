import 'dart:math';

import 'package:core/src/styles/app_colors.dart';
import 'package:core/src/styles/twitter_icons.dart';
import 'package:core/src/widgets/app_icon_button.dart';
import 'package:core/src/widgets/tweet/tweet.dart';
import 'package:flutter/material.dart';

/// Animated icon button widget for the like metric of a tweet
///
/// Mainly used within the [Likes] widget next to a
/// [MetricText] widget for the number of likes
class LikeIconButton extends StatefulWidget {
  /// Creates a new instance of [LikeIconButton]
  const LikeIconButton({
    super.key,
    this.isActive = false,
    this.onPressed,
    this.size = 30,
  });

  /// Indicated if icon button is clicked by the user
  final bool isActive;

  /// Callback for [AppIconButton.onPressed]
  final VoidCallback? onPressed;

  /// The icon size for [AppIconButton.size]
  final double size;

  @override
  State<LikeIconButton> createState() => _LikeIconButtonState();
}

class _LikeIconButtonState extends State<LikeIconButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant LikeIconButton oldWidget) {
    if (oldWidget.isActive != widget.isActive) {
      if (widget.isActive) {
        animationController.forward().then((_) {
          animationController.reset();
        });
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final splashRadius = widget.size / 2 + widget.size * 0.7;
    final iconButtonSize = splashRadius * 2;
    return SizedBox(
      width: iconButtonSize,
      height: iconButtonSize,
      child: Stack(
        children: [
          AppIconButton(
            activeColor: AppColors.pink,
            isActive: widget.isActive,
            hoverColor: AppColors.pink,
            size: widget.size,
            onPressed: widget.onPressed,
            icon: AnimatedCrossFade(
              duration: const Duration(milliseconds: 100),
              crossFadeState: widget.isActive
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              firstChild: AnimatedOpacity(
                opacity: widget.isActive ? 0 : 1,
                duration: const Duration(milliseconds: 100),
                child: const Icon(TwitterIcons.heart),
              ),
              secondChild: const Icon(TwitterIcons.heart_fill),
            ),
          ),
          Transform.translate(
            offset: const Offset(-5, -5),
            child: CustomPaint(
              painter: LikeBubblesPainter(
                animationController: animationController,
                canvasSize: iconButtonSize + 10,
                bubblesRadius: 3,
              ),
            ),
          ),
          CustomPaint(
            foregroundPainter: LikeCirclePainter(
              animationController: animationController,
              canvasSize: iconButtonSize,
            ),
            painter: LikeBubblesPainter(
              animationController: animationController,
              canvasSize: iconButtonSize,
            ),
          ),
        ],
      ),
    );
  }
}

/// Custom painter for the animated circle of the [LikeIconButton]
class LikeCirclePainter extends CustomPainter {
  /// Creates a new instance of [LikeCirclePainter]
  LikeCirclePainter({
    required this.animationController,
    double canvasSize = 40,
  }) : super(repaint: animationController) {
    circleRadius = canvasSize / 2 * 0.7;
    circleOffset = Offset(canvasSize / 2, canvasSize / 2);

    circleRadiusAnimation = Tween<double>(begin: 0, end: circleRadius).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    circleColorAnimation =
        ColorTween(begin: AppColors.pink, end: AppColors.pinkLight).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0, 0.7, curve: Curves.easeOut),
      ),
    );

    final circleStrokeTweenSequence = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: circleRadius),
        weight: 20,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: circleRadius, end: 0),
        weight: 80,
      ),
    ]);

    circleStrokeAnimation = circleStrokeTweenSequence.animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  /// Animation controller responsible for repainting this painter
  final AnimationController animationController;

  /// The radius of the circle
  late double circleRadius;

  /// The x and y location of the circle in the canvas
  late Offset circleOffset;

  /// Animation responsible for animating the radius
  /// of the circle from 0 to [circleRadius]
  late Animation<double> circleRadiusAnimation;

  /// Animation responsible for animating the stroke
  /// of the circle from 0 to [circleRadius]
  ///
  /// Giving the circle a stroke width equal to its radius
  /// gives the effect of a filled circle but also with the option
  /// of animating this stroke to achieve the desired
  /// Twitter like animation circle effect
  late Animation<double> circleStrokeAnimation;

  /// Animation responsible for animating the color of the
  /// circle's stroke from [AppColors.pink] to [AppColors.pinkLight]
  late Animation<Color?> circleColorAnimation;

  final Paint _circlePaint = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    _circlePaint
      ..strokeWidth = circleStrokeAnimation.value
      ..style = PaintingStyle.stroke
      ..color = circleColorAnimation.value ?? AppColors.pink;
    canvas.drawCircle(circleOffset, circleRadiusAnimation.value, _circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

/// Custom painter for the animated bubbles of the [LikeIconButton]
class LikeBubblesPainter extends CustomPainter {
  /// Creates a new instance of [LikeBubblesPainter]
  LikeBubblesPainter({
    required this.animationController,
    double canvasSize = 40,
    this.bubblesRadius = 2,
  }) : super(repaint: animationController) {
    final circleOffset = Offset(canvasSize / 2, canvasSize / 2);

    final radiantStep = 2 * pi / bubbleColors.length;
    bubblesAnimation = List.generate(bubbleColors.length, (i) {
      return Tween<Offset>(
        begin: circleOffset,
        end: Offset(
          circleOffset.dx + sin(i * radiantStep) * canvasSize / 2,
          circleOffset.dy + cos(i * radiantStep) * canvasSize / 2,
        ),
      ).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInOut,
        ),
      );
    });

    final bubblesRadiusTweenSequence = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: bubblesRadius),
        weight: 80,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: bubblesRadius, end: 0),
        weight: 20,
      ),
    ]);

    bubblesRadiusAnimation = bubblesRadiusTweenSequence.animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  /// Animation controller responsible for repainting this painter
  final AnimationController animationController;

  /// The radius of each bubble circle
  final double bubblesRadius;

  /// The animation responsible for animating each bubble circle offset
  /// stating from the center of the canvas and moving further away
  /// such that at the end all the bubbles are positioned in a single circle
  late List<Animation<Offset>> bubblesAnimation;

  /// The animation responsible for animating the bubbles radius value
  /// from 0 to [bubblesRadius] and back to 0 via a [TweenSequence]
  /// to achieve the effect of the bubbles showing and then disappearing
  /// as they move further from the center
  late Animation<double> bubblesRadiusAnimation;

  /// List of bubble colors
  static const List<Color> bubbleColors = [
    Color(0xffE78BC4),
    Color(0xffDF92F9),
    Color(0xffF9B81F),
    Color(0xffE5B58C),
    Color(0xff1EA0F2),
    Color(0xffB2F792),
    Color(0xffB2F792),
  ];

  final Paint _bubblesPaint = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < bubbleColors.length; i++) {
      canvas.drawCircle(
        bubblesAnimation[i].value,
        bubblesRadiusAnimation.value,
        _bubblesPaint..color = bubbleColors[i],
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
