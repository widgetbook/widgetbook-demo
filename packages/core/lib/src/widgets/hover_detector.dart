import 'package:flutter/material.dart';

/// Builds a child widget for a [HoverDetector] widget
/// with access to hover state
typedef HoverDetectorChildBuilder = Widget Function(
  BuildContext context,
  bool isHovered,
);

/// Widget that detects hover with a [MouseRegion] and returns
/// the hover state with its [childBuilder]
class HoverDetector extends StatefulWidget {
  /// Creates a new instance of [HoverDetector]
  const HoverDetector({
    super.key,
    required this.childBuilder,
  });

  /// Builds child widget with access to hover state
  final HoverDetectorChildBuilder childBuilder;

  @override
  State<HoverDetector> createState() => _HoverDetectorState();
}

class _HoverDetectorState extends State<HoverDetector> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: widget.childBuilder(context, isHovered),
    );
  }
}
