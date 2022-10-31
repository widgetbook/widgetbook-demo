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
    this.isAutoColored = true,
    this.activeColor = _activeColor,
  });

  /// Creates a new instance of [AppIcon] with `addFeather` icon image
  const AppIcon.addFeather({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.addFeatherPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `angleBack` icon image
  const AppIcon.angleBack({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.angleBackPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `appleFill` icon image
  const AppIcon.appleFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.appleFillPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `bellFill` icon image
  const AppIcon.bellFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.bellFillPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `bell` icon image
  const AppIcon.bell({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.bellPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `bookmark` icon image
  const AppIcon.bookmark({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.bookmarkPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `bulb` icon image
  const AppIcon.bulb({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.bulbPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `calendar` icon image
  const AppIcon.calendar({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.calendarPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `circle` icon image
  const AppIcon.circle({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.circlePath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `close` icon image
  const AppIcon.close({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.closePath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `down` icon image
  const AppIcon.down({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.downPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `eyeCrossed` icon image
  const AppIcon.eyeCrossed({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.eyeCrossedPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `eye` icon image
  const AppIcon.eye({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.eyePath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `feature` icon image
  const AppIcon.feature({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.featurePath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `gif` icon image
  const AppIcon.gif({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.gifPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `google` icon image
  const AppIcon.google({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.googlePath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `hash` icon image
  const AppIcon.hash({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.hashPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `heartFill` icon image
  const AppIcon.heartFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.heartFillPath,
        isAutoColored = true,
        activeColor = AppColors.pink;

  /// Creates a new instance of [AppIcon] with `heart` icon image
  const AppIcon.heart({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.heartPath,
        isAutoColored = true,
        activeColor = AppColors.pink;

  /// Creates a new instance of [AppIcon] with `homeFill` icon image
  const AppIcon.homeFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.homeFillPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `home` icon image
  const AppIcon.home({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.homePath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `image` icon image
  const AppIcon.image({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.imagePath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `infoMenuCircle` icon image
  const AppIcon.infoMenuCircle({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.infoMenuCirclePath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `infoMenu` icon image
  const AppIcon.infoMenu({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.infoMenuPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `link` icon image
  const AppIcon.link({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.linkPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `list` icon image
  const AppIcon.list({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.listPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `mailFill` icon image
  const AppIcon.mailFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.mailFillPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `mail` icon image
  const AppIcon.mail({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.mailPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `mapPin` icon image
  const AppIcon.mapPin({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.mapPinPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `pin` icon image
  const AppIcon.pin({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.pinPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `plus` icon image
  const AppIcon.plus({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.plusPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `poll` icon image
  const AppIcon.poll({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.pollPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `qr` icon image
  const AppIcon.qr({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.qrPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `reply` icon image
  const AppIcon.reply({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.replyPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `retweet` icon image
  const AppIcon.retweet({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.retweetPath,
        isAutoColored = true,
        activeColor = AppColors.success;

  /// Creates a new instance of [AppIcon] with `searchFill` icon image
  const AppIcon.searchFill({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.searchFillPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `search` icon image
  const AppIcon.search({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.searchPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `share` icon image
  const AppIcon.share({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.sharePath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `topics` icon image
  const AppIcon.topics({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.topicsPath,
        isAutoColored = true,
        activeColor = _activeColor;

  /// Creates a new instance of [AppIcon] with `user` icon image
  const AppIcon.user({
    super.key,
    this.size = 20,
    this.color,
    this.isActive = false,
  })  : image = AppIcons.userPath,
        isAutoColored = true,
        activeColor = _activeColor;

  static const Color _activeColor = AppColors.primary;

  /// Icon image path
  final String image;

  /// Icon size
  final double size;

  /// Optional icon color
  final Color? color;

  /// If true, icon will be colored based on theme
  /// If false, original image color will be used
  ///
  /// Defaults to `true`
  final bool isAutoColored;

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
      color: isActive
          ? activeColor
          : (color ??
              (isAutoColored ? Theme.of(context).iconTheme.color : null)),
      package: 'core',
    );
  }
}
