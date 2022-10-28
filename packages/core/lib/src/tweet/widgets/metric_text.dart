import 'package:core/src/styles/app_colors.dart';
import 'package:flutter/material.dart';

/// Tweet metric text widget
///
/// e.g. Likes, comments, retweets, ..etc
class MetricText extends StatefulWidget {
  /// Creates a new instance of [MetricText]
  const MetricText({
    super.key,
    this.value = 0,
    this.isActive = false,
    this.activeColor = AppColors.primary,
  });

  /// Metric value
  final int value;

  /// Metric incremented by user
  final bool isActive;

  /// Color of the text when active
  final Color activeColor;

  @override
  State<MetricText> createState() => _MetricTextState();
}

class _MetricTextState extends State<MetricText> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          AnimatedSlide(
            duration: const Duration(milliseconds: 300),
            offset: Offset(0, widget.isActive ? -1 : 0),
            curve: Curves.easeInOut,
            child: Opacity(
              opacity: widget.value == 0 ? 0 : 1,
              child: Text(
                '${widget.value}',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
          AnimatedSlide(
            duration: const Duration(milliseconds: 300),
            offset: Offset(0, widget.isActive ? 0 : 1),
            curve: Curves.easeInOut,
            child: Text(
              '${widget.value + 1}',
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: widget.activeColor),
            ),
          ),
        ],
      ),
    );
  }
}
