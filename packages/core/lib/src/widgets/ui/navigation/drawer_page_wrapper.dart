import 'package:core/core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// A Wrapper for a page that has a drawer, typically animated
class DrawerPageWrapper extends StatefulWidget {
  /// Creates a Wrapper for a page that has a drawer, typically animated
  const DrawerPageWrapper({
    super.key,
    required this.user,
    required this.body,
    required this.appBarTitle,
    this.drawerWidth = DrawerUtils.width,
    this.width,
    this.height,
  });

  /// The logged in user
  final User user;

  /// The body content of the page
  final Widget body;

  /// The AppBar title of the page
  final Widget appBarTitle;

  /// Optional width
  final double? width;

  /// Optional height
  final double? height;

  /// Width of the drawer
  final double drawerWidth;

  @override
  State<DrawerPageWrapper> createState() => _DrawerPageWrapperState();
}

class _DrawerPageWrapperState extends State<DrawerPageWrapper>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> xOffsetAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: DrawerUtils.animationDuration,
    );

    xOffsetAnimation = Tween<double>(
      begin: -widget.drawerWidth,
      end: 0,
    ).animate(
      CurvedAnimation(
          parent: animationController, curve: DrawerUtils.animationCurve),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      constrained: false,
      panEnabled: false,
      scaleEnabled: false,
      child: SizedBox(
        width: widget.width ??
            widget.drawerWidth + MediaQuery.of(context).size.width,
        height: widget.height ?? MediaQuery.of(context).size.height,
        child: AnimatedBuilder(
          animation: animationController,
          builder: (_, child) {
            return Transform.translate(
              offset: Offset(xOffsetAnimation.value, 0),
              child: GestureDetector(
                dragStartBehavior: DragStartBehavior.down,
                behavior: HitTestBehavior.opaque,
                onHorizontalDragStart: (_) {
                  // Todo: implement dragging to open drawer
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: widget.drawerWidth,
                      child: AppDrawer(user: widget.user),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          child!,
                          Positioned.fill(
                            child: IgnorePointer(
                              ignoring: !animationController.isCompleted,
                              child: GestureDetector(
                                onTap: animationController.reverse,
                                child: FadeTransition(
                                  opacity: animationController,
                                  child: ColoredBox(
                                    color: Theme.of(context).isDark
                                        ? AppColors.white.withOpacity(0.3)
                                        : AppColors.black.withOpacity(0.3),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Scaffold(
            appBar: AppBar(
              leadingWidth: 32 + 16,
              elevation: 0.5,
              leading: Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 16,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: animationController.forward,
                    child: Avatar.smaller(
                      imageUrl: widget.user.avatarUrl,
                    ),
                  ),
                ),
              ),
              title: widget.appBarTitle,
            ),
            body: widget.body,
            // Todo: add bottom navigation
          ),
        ),
      ),
    );
  }
}
