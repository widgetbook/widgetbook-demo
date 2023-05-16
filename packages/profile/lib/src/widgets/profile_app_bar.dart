import 'dart:ui';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileAppBar extends StatefulWidget {
  const ProfileAppBar({
    super.key,
    required this.user,
    this.scrollController,
  });

  final User user;
  final ScrollController? scrollController;

  @override
  State<ProfileAppBar> createState() => _ProfileAppBarState();
}

class _ProfileAppBarState extends State<ProfileAppBar> {
  late final ScrollController scrollController;

  // Todo: change to the start position of the display name & username
  static const double animationStartDistance = 100;

  // Todo: change to the end position of the display name & username
  static const double animationEndDistance = 200;
  static const double animationRunningDistance =
      animationEndDistance - animationStartDistance;

  double scrollProgress = 0;

  void scrollListener() {
    final offset = scrollController.position.pixels;
    if (offset <= animationEndDistance && offset >= animationStartDistance) {
      final crossedDistance = offset - animationStartDistance;
      setState(() {
        scrollProgress = crossedDistance / animationRunningDistance;
      });
    } else if (offset < animationStartDistance) {
      setState(() {
        scrollProgress = 0;
      });
    } else {
      setState(() {
        scrollProgress = 1;
      });
    }
  }

  @override
  void initState() {
    scrollController = widget.scrollController ?? ScrollController();
    scrollController.addListener(scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      expandedHeight: 150,
      collapsedHeight: 60,
      floating: true,
      pinned: true,
      flexibleSpace: Stack(
        children: [
          Positioned.fill(
            child: widget.user.coverUrl != null
                ? AppCachedNetworkImage(
                    imageUrl: widget.user.coverUrl!,
                  )
                : const ColoredBox(
                    // Todo: generate color from avatar
                    color: AppColors.border,
                  ),
          ),
          Positioned.fill(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaY: 5 * scrollProgress,
                  sigmaX: 5 * scrollProgress,
                ),
                child: ColoredBox(
                  color: Colors.black.withOpacity(
                    0.2 * scrollProgress,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: InkWell(
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        TwitterIcons.back,
                        size: 16,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                const AppGap.sm(),
                Expanded(
                  child: FractionalTranslation(
                    translation: Offset(0, 1 - scrollProgress),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: DisplayName(
                              user: widget.user,
                              color: AppColors.white,
                            ),
                          ),
                          Flexible(
                            child: Text(
                              '${widget.user.tweetsCount} '
                              '${AppLocalizations.of(context)!.tweet}',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: AppColors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
