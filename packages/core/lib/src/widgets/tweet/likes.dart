import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Tweet likes icon and metric text widget
class Likes extends StatefulWidget {
  /// Creates new instance of [Likes]
  const Likes({
    super.key,
    this.metricValue = 0,
    this.iconSize = 15,
    this.onLikesChanged,
  });

  /// Likes metric value
  final int metricValue;

  /// Size of likes icon
  final double iconSize;

  /// Callback to notify parent widget of like/unlike action
  final ValueChanged<bool>? onLikesChanged;

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> with SingleTickerProviderStateMixin {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LikeIconButton(
          isActive: _isActive,
          size: widget.iconSize,
          onPressed: () {
            setState(() {
              _isActive = !_isActive;
            });
            widget.onLikesChanged?.call(_isActive);
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
