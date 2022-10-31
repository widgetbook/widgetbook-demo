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
  })  : image = AppIcons.addFeatherPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `angleBack` icon image
  const AppIcon.angleBack({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.angleBackPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `appleFill` icon image
  const AppIcon.appleFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.appleFillPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `bellFill` icon image
  const AppIcon.bellFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.bellFillPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `bell` icon image
  const AppIcon.bell({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.bellPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `bookmark` icon image
  const AppIcon.bookmark({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.bookmarkPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `bulb` icon image
  const AppIcon.bulb({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.bulbPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `calendar` icon image
  const AppIcon.calendar({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.calendarPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `circle` icon image
  const AppIcon.circle({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.circlePath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `close` icon image
  const AppIcon.close({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.closePath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `down` icon image
  const AppIcon.down({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.downPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `eyeCrossed` icon image
  const AppIcon.eyeCrossed({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.eyeCrossedPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `eye` icon image
  const AppIcon.eye({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.eyePath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `feature` icon image
  const AppIcon.feature({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.featurePath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `gif` icon image
  const AppIcon.gif({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.gifPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `google` icon image
  const AppIcon.google({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.googlePath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `hash` icon image
  const AppIcon.hash({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.hashPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `heartFill` icon image
  const AppIcon.heartFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.heartFillPath,
        activeColor = AppColors.pink;

  /// Creates a new instance of [AppIcon] with `heart` icon image
  const AppIcon.heart({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.heartPath,
        activeColor = AppColors.pink;

  /// Creates a new instance of [AppIcon] with `homeFill` icon image
  const AppIcon.homeFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.homeFillPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `home` icon image
  const AppIcon.home({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.homePath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `image` icon image
  const AppIcon.image({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.imagePath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `infoMenuCircle` icon image
  const AppIcon.infoMenuCircle({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.infoMenuCirclePath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `infoMenu` icon image
  const AppIcon.infoMenu({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.infoMenuPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `link` icon image
  const AppIcon.link({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.linkPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `list` icon image
  const AppIcon.list({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.listPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `mailFill` icon image
  const AppIcon.mailFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.mailFillPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `mail` icon image
  const AppIcon.mail({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.mailPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `mapPin` icon image
  const AppIcon.mapPin({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.mapPinPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `pin` icon image
  const AppIcon.pin({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.pinPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `plus` icon image
  const AppIcon.plus({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.plusPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `poll` icon image
  const AppIcon.poll({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.pollPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `qr` icon image
  const AppIcon.qr({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.qrPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `reply` icon image
  const AppIcon.reply({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.replyPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `reply-fill` icon image
  const AppIcon.replyFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.replyFillPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `retweet` icon image
  const AppIcon.retweet({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.retweetPath,
        activeColor = AppColors.success;

  /// Creates a new instance of [AppIcon] with `searchFill` icon image
  const AppIcon.searchFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.searchFillPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `search` icon image
  const AppIcon.search({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.searchPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `share` icon image
  const AppIcon.share({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.sharePath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `topics` icon image
  const AppIcon.topics({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.topicsPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `user` icon image
  const AppIcon.user({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.userPath,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `user-fill` icon image
  const AppIcon.userFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.userFillPath,
        activeColor = _activeColor;

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
