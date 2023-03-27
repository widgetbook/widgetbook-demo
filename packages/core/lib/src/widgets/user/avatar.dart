import 'package:core/core.dart';
import 'package:flutter/material.dart';

/// Avatar widget used to hold user
class Avatar extends StatelessWidget {
  /// Creates new instance of [Avatar]
  const Avatar({
    super.key,
    this.size = 55,
    this.imageUrl,
    this.fit = BoxFit.cover,
  });

  /// Creates new instance of [Avatar] in Small size
  const Avatar.small({
    super.key,
    this.imageUrl,
    this.fit = BoxFit.cover,
  }) : size = 37;

  /// Creates new instance of [Avatar] in Smaller size
  const Avatar.smaller({
    super.key,
    this.imageUrl,
    this.fit = BoxFit.cover,
  }) : size = 32;

  /// Creates new instance of [Avatar] in Smallest size
  const Avatar.smallest({
    super.key,
    this.imageUrl,
    this.fit = BoxFit.cover,
  }) : size = 20;

  /// Avatar size (width and height)
  final double size;

  /// Url of the avatar image
  final String? imageUrl;

  /// Box fit of the avatar image
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          border: Border.all(
            color: Theme.of(context).dividerColor,
            width: 2,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(size / 2),
          child: imageUrl != null && imageUrl!.isNotEmpty
              ? AppCachedNetworkImage(
                  imageUrl: imageUrl!,
                  fit: fit,
                )
              : Image.asset(
                  'assets/images/avatar-placeholder.png',
                  package: 'core',
                  fit: fit,
                ),
        ),
      ),
    );
  }
}
