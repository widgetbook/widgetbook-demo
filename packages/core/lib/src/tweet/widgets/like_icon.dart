import 'dart:math';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
class LikeIcon extends StatefulWidget {
  ///
  LikeIcon({
    super.key,
    this.isActive = false,
    this.onPressed,
    this.size = 30,
    this.animationController,
  });

  final bool isActive;
  final AnimationController? animationController;

  final VoidCallback? onPressed;

  final double size;

  @override
  State<LikeIcon> createState() => _LikeIconState();
}

class _LikeIconState extends State<LikeIcon>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;

  late final AnimationController animationController;

  @override
  void initState() {
    animationController = widget.animationController ??
        AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 600),
        );
    super.initState();
  }

  @override
  void dispose() {
    if (widget.animationController == null) {
      animationController.dispose();
    }
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant LikeIcon oldWidget) {
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
    return Stack(
      children: [
        SizedBox(
          width: splashRadius * 2,
          height: splashRadius * 2,
          child: Theme(
            data: Theme.of(context).copyWith(
              splashFactory: NoSplash.splashFactory,
            ),
            child: MouseRegion(
              onEnter: (PointerEnterEvent event) {
                setState(() {
                  _isHovered = true;
                });
              },
              onExit: (PointerExitEvent event) {
                setState(() {
                  _isHovered = false;
                });
              },
              // Todo: extract IconButton to separate widget
              child: IconButton(
                onPressed: widget.onPressed,
                splashRadius: splashRadius,
                iconSize: widget.size,
                splashColor: AppColors.pink.withOpacity(0.1),
                highlightColor: AppColors.pink.withOpacity(0.1),
                hoverColor: AppColors.pink.withOpacity(0.1),
                padding: const EdgeInsets.all(10),
                color: widget.isActive || _isHovered
                    ? AppColors.pink
                    : AppColors.textLight,
                icon: AnimatedCrossFade(
                  duration: const Duration(milliseconds: 100),
                  crossFadeState: widget.isActive
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  firstChild: AnimatedOpacity(
                    opacity: widget.isActive ? 0 : 1,
                    duration: const Duration(milliseconds: 100),
                    child: const Icon(Icons.favorite_border_outlined),
                  ),
                  secondChild: const Icon(Icons.favorite),
                ),
              ),
            ),
          ),
        ),
        CustomPaint(
          painter: LikePainter(
            animationController: animationController,
            splashRadius: splashRadius,
          ),
        ),
      ],
    );
  }
}

///
class LikePainter extends CustomPainter {
  ///
  LikePainter({
    required this.animationController,
    double splashRadius = 20,
  }) : super(repaint: animationController) {
    circleSize = splashRadius * 0.7;
    circleOffset = Offset(splashRadius, splashRadius);

    circleSizeAnimation = Tween<double>(begin: 0, end: circleSize).animate(
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
        tween: Tween<double>(begin: 0, end: splashRadius),
        weight: 20,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: splashRadius, end: 0),
        weight: 80,
      ),
    ]);

    circleStrokeAnimation = circleStrokeTweenSequence.animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );

    final radiantStep = 2 * pi / outerBubbleColors.length;
    outerBubblesAnimations = List.generate(outerBubbleColors.length, (i) {
      return Tween<Offset>(
        begin: circleOffset,
        end: Offset(
          circleOffset.dx + sin(i * radiantStep) * (splashRadius * 1.2),
          circleOffset.dy + cos(i * radiantStep) * (splashRadius * 1.2),
        ),
      ).animate(
        CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInOut,
        ),
      );
    });

    innerBubblesAnimations = List.generate(outerBubbleColors.length, (i) {
      return Tween<Offset>(
        begin: circleOffset,
        end: Offset(
          circleOffset.dx + sin(i * radiantStep) * splashRadius,
          circleOffset.dy + cos(i * radiantStep) * splashRadius,
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
        tween: Tween<double>(begin: 0, end: outerBubblesRadius),
        weight: 80,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: outerBubblesRadius, end: 0),
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

  final AnimationController animationController;
  late double circleSize;
  late Offset circleOffset;

  late Animation<double> circleSizeAnimation;
  late Animation<double> circleStrokeAnimation;
  late Animation<Color?> circleColorAnimation;
  late List<Animation<Offset>> outerBubblesAnimations;
  late List<Animation<Offset>> innerBubblesAnimations;
  late Animation<double> bubblesRadiusAnimation;

  final Paint _circlePaint = Paint();
  final Paint _bubblesPaint = Paint();

  static const List<Color> outerBubbleColors = [
    Color(0xffE78BC4),
    Color(0xffDF92F9),
    Color(0xffF9B81F),
    Color(0xffE5B58C),
    Color(0xff1EA0F2),
    Color(0xffB2F792),
    Color(0xffB2F792),
  ];

  static const double outerBubblesRadius = 3;

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < outerBubbleColors.length; i++) {
      canvas
        ..drawCircle(
          outerBubblesAnimations[i].value,
          bubblesRadiusAnimation.value,
          _bubblesPaint..color = outerBubbleColors[i],
        )
        ..drawCircle(
          innerBubblesAnimations[i].value,
          bubblesRadiusAnimation.value * 0.8,
          _bubblesPaint..color = outerBubbleColors[i],
        );
    }

    _circlePaint
      ..strokeWidth = circleStrokeAnimation.value
      ..style = PaintingStyle.stroke
      ..color = circleColorAnimation.value ?? AppColors.pink;
    canvas.drawCircle(circleOffset, circleSizeAnimation.value, _circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
