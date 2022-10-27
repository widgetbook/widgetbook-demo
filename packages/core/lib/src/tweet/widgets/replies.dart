import 'package:core/src/styles/app_colors.dart';
import 'package:core/src/tweet/widgets/metric_text.dart';
import 'package:core/src/widgets/app_icon_button.dart';
import 'package:flutter/material.dart';

/// Tweet replies icon and metric text widget
class Replies extends StatefulWidget {
  /// Creates new instance of [Replies]
  const Replies({
    super.key,
    this.metricValue = 0,
    this.iconSize = 15,
  });

  /// Replies metric value
  final int metricValue;

  /// Size of replies icon
  final double iconSize;

  @override
  State<Replies> createState() => _RepliesState();
}

class _RepliesState extends State<Replies> {
  bool _isActive = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppIconButton(
          isActive: _isActive,
          size: widget.iconSize,
          // Todo: change to design icons
          icon: const Icon(Icons.mode_comment_outlined),
          activeIcon: const Icon(Icons.mode_comment),
          hoverColor: AppColors.success,
          activeColor: AppColors.success,
          onPressed: () {
            setState(() {
              _isActive = !_isActive;
            });
          },
        ),
        MetricText(
          value: widget.metricValue,
          isActive: _isActive,
          activeColor: AppColors.success,
        ),
      ],
    );
  }
}
