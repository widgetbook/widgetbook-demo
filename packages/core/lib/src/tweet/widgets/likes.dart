import 'package:core/src/tweet/widgets/like_icon.dart';
import 'package:flutter/material.dart';

class Likes extends StatefulWidget {
  const Likes({
    super.key,
    this.count = 0,
    this.iconSize = 15,
  });

  final int count;
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
        if (widget.count > 0)
          Text(
            '${widget.count}',
            style: Theme.of(context).textTheme.caption,
          ),
      ],
    );
  }
}
