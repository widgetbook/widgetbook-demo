import 'package:core/src/styles/app_colors.dart';
import 'package:core/src/styles/app_icons.dart';
import 'package:flutter/material.dart';

/// Default app icon widget
class AppIcon extends StatelessWidget {
  /// Creates a new instance of [AppIcon]
  const AppIcon(
    this.image, {
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  });

  /// Creates a new instance of [AppIcon] with `addFeather` icon image
  const AppIcon.addFeather({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.addFeather;

  /// Creates a new instance of [AppIcon] with `angleBack` icon image
  const AppIcon.angleBack({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.angleBack;

  /// Creates a new instance of [AppIcon] with `appleFill` icon image
  const AppIcon.appleFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.appleFill;

  /// Creates a new instance of [AppIcon] with `bellFill` icon image
  const AppIcon.bellFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.bellFill;

  /// Creates a new instance of [AppIcon] with `bell` icon image
  const AppIcon.bell({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.bell;

  /// Creates a new instance of [AppIcon] with `bookmark` icon image
  const AppIcon.bookmark({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.bookmark;

  /// Creates a new instance of [AppIcon] with `bulb` icon image
  const AppIcon.bulb({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.bulb;

  /// Creates a new instance of [AppIcon] with `calendar` icon image
  const AppIcon.calendar({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.calendar;

  /// Creates a new instance of [AppIcon] with `circle` icon image
  const AppIcon.circle({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.circle;

  /// Creates a new instance of [AppIcon] with `close` icon image
  const AppIcon.close({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.close;

  /// Creates a new instance of [AppIcon] with `down` icon image
  const AppIcon.down({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.down;

  /// Creates a new instance of [AppIcon] with `eyeCrossed` icon image
  const AppIcon.eyeCrossed({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.eyeCrossed;

  /// Creates a new instance of [AppIcon] with `eye` icon image
  const AppIcon.eye({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.eye;

  /// Creates a new instance of [AppIcon] with `feature` icon image
  const AppIcon.feature({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.feature;

  /// Creates a new instance of [AppIcon] with `gif` icon image
  const AppIcon.gif({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.gif;

  /// Creates a new instance of [AppIcon] with `google` icon image
  const AppIcon.google({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.google;

  /// Creates a new instance of [AppIcon] with `hash` icon image
  const AppIcon.hash({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.hash;

  /// Creates a new instance of [AppIcon] with `heartFill` icon image
  const AppIcon.heartFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.heartFill,
        activeColor = AppColors.pink;

  /// Creates a new instance of [AppIcon] with `heart` icon image
  const AppIcon.heart({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.heart,
        activeColor = AppColors.pink;

  /// Creates a new instance of [AppIcon] with `homeFill` icon image
  const AppIcon.homeFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.homeFill;

  /// Creates a new instance of [AppIcon] with `home` icon image
  const AppIcon.home({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.home;

  /// Creates a new instance of [AppIcon] with `image` icon image
  const AppIcon.image({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.image;

  /// Creates a new instance of [AppIcon] with `infoMenuCircle` icon image
  const AppIcon.infoMenuCircle({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.infoMenuCircle;

  /// Creates a new instance of [AppIcon] with `infoMenu` icon image
  const AppIcon.infoMenu({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.infoMenu;

  /// Creates a new instance of [AppIcon] with `link` icon image
  const AppIcon.link({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.link;

  /// Creates a new instance of [AppIcon] with `list` icon image
  const AppIcon.list({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.list;

  /// Creates a new instance of [AppIcon] with `mailFill` icon image
  const AppIcon.mailFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.mailFill;

  /// Creates a new instance of [AppIcon] with `mail` icon image
  const AppIcon.mail({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.mail;

  /// Creates a new instance of [AppIcon] with `mapPin` icon image
  const AppIcon.mapPin({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.mapPin;

  /// Creates a new instance of [AppIcon] with `pin` icon image
  const AppIcon.pin({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.pin;

  /// Creates a new instance of [AppIcon] with `plus` icon image
  const AppIcon.plus({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.plus;

  /// Creates a new instance of [AppIcon] with `poll` icon image
  const AppIcon.poll({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.poll;

  /// Creates a new instance of [AppIcon] with `qr` icon image
  const AppIcon.qr({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.qr;

  /// Creates a new instance of [AppIcon] with `reply` icon image
  const AppIcon.reply({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.reply;

  /// Creates a new instance of [AppIcon] with `reply-fill` icon image
  const AppIcon.replyFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.replyFill;

  /// Creates a new instance of [AppIcon] with `retweet` icon image
  const AppIcon.retweet({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.retweet,
        activeColor = AppColors.success;

  /// Creates a new instance of [AppIcon] with `searchFill` icon image
  const AppIcon.searchFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.searchFill;

  /// Creates a new instance of [AppIcon] with `search` icon image
  const AppIcon.search({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.search;

  /// Creates a new instance of [AppIcon] with `share` icon image
  const AppIcon.share({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.share;

  /// Creates a new instance of [AppIcon] with `topics` icon image
  const AppIcon.topics({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.topics;

  /// Creates a new instance of [AppIcon] with `user` icon image
  const AppIcon.user({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.user;

  /// Creates a new instance of [AppIcon] with `user-fill` icon image
  const AppIcon.userFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
    this.activeColor = _activeColor,
  }) : image = AppIcons.userFill;

  static const Color _activeColor = AppColors.primary;

  /// Icon image path
  final String image;

  /// Icon size
  final double size;

  /// Optional icon color
  final Color? color;

  /// If the icon is active [activeColor] is used
  final bool isActive;

  /// Color to use when [isActive] is `true`
  ///
  /// Defaults to [AppColors.primary]
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: size,
      height: size,
      color:
          isActive ? activeColor : (color ?? Theme.of(context).iconTheme.color),
      package: 'core',
    );
  }
}
