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

    final tweenSequence = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 0, end: splashRadius),
        weight: 20,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: splashRadius, end: 0),
        weight: 80,
      ),
    ]);

    circleStrokeAnimation = tweenSequence.animate(
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
  final Path _path = Path();

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
