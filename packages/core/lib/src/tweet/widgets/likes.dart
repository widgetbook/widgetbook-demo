import 'package:core/core.dart';
import 'package:core/src/tweet/widgets/like_icon.dart';
import 'package:core/src/tweet/widgets/metric_text.dart';
import 'package:flutter/material.dart';

/// Tweet likes icon and metric text widget
class Likes extends StatefulWidget {
  /// Creates new instance of [Likes]
  const Likes({
    super.key,
    this.metricValue = 0,
    this.iconSize = 15,
  });

  /// Likes metric value
  final int metricValue;

  /// Size of likes icon
  final double iconSize;

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> with SingleTickerProviderStateMixin {
  bool _isActive = false;

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
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LikeIcon(
          animationController: animationController,
          isActive: _isActive,
          size: widget.iconSize,
          onPressed: () {
            setState(() {
              _isActive = !_isActive;
            });
          },
        ),
        MetricText(
          value: widget.metricValue,
          isActive: _isActive,
          activeColor: AppColors.pink,
        ),
      ],
    );
  }
}
