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
    return SizedBox(
      width: splashRadius * 2,
      height: splashRadius * 2,
      child: Stack(
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
          Transform.translate(
            offset: const Offset(-5, -5),
            child: CustomPaint(
              painter: BubblesPainter(
                animationController: animationController,
                splashRadius: splashRadius + 5,
                bubblesRadius: 3,
              ),
            ),
          ),
          CustomPaint(
            foregroundPainter: LikePainter(
              animationController: animationController,
              splashRadius: splashRadius,
            ),
            painter: BubblesPainter(
              animationController: animationController,
              splashRadius: splashRadius,
            ),
          ),
        ],
      ),
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
  }

  final AnimationController animationController;
  late double circleSize;
  late Offset circleOffset;

  late Animation<double> circleSizeAnimation;
  late Animation<double> circleStrokeAnimation;
  late Animation<Color?> circleColorAnimation;

  final Paint _circlePaint = Paint();

  @override
  void paint(Canvas canvas, Size size) {
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

///
class BubblesPainter extends CustomPainter {
  ///
  BubblesPainter({
    required this.animationController,
    double splashRadius = 20,
    this.bubblesRadius = 2,
  }) : super(repaint: animationController) {
    circleOffset = Offset(splashRadius, splashRadius);

    final radiantStep = 2 * pi / bubbleColors.length;
    bubblesAnimation = List.generate(bubbleColors.length, (i) {
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

  final AnimationController animationController;

  final double bubblesRadius;

  late Offset circleOffset;

  late List<Animation<Offset>> bubblesAnimation;

  late Animation<double> bubblesRadiusAnimation;

  final Paint _bubblesPaint = Paint();

  static const List<Color> bubbleColors = [
    Color(0xffE78BC4),
    Color(0xffDF92F9),
    Color(0xffF9B81F),
    Color(0xffE5B58C),
    Color(0xff1EA0F2),
    Color(0xffB2F792),
    Color(0xffB2F792),
  ];

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
