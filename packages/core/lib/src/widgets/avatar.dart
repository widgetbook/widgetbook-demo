import 'package:flutter/material.dart';

/// Avatar widget used to hold user
class Avatar extends StatelessWidget {
  /// Creates new instance of [Avatar]
  const Avatar({
    super.key,
    this.size = 55,
    this.imageUrl,
  });

  /// Creates new instance of [Avatar] in Small size
  const Avatar.small({
    super.key,
    this.imageUrl,
  }) : size = 37;

  /// Creates new instance of [Avatar] in Smaller size
  const Avatar.smaller({
    super.key,
    this.imageUrl,
  }) : size = 32;

  /// Creates new instance of [Avatar] in Smallest size
  const Avatar.smallest({
    super.key,
    this.imageUrl,
  }) : size = 20;

  /// Avatar size (width and height)
  final double size;

  /// Url of the avatar image
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size / 2),
        child: imageUrl != null
            ? Image.network(imageUrl!)
            : Image.asset(
                'assets/images/avatar-placeholder.png',
                package: 'core',
              ),
      ),
    );
  }
}
