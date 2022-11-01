/// Helper class with necessary data for app icons
class AppIcons {
  /// add-feather.png icon path
  static const String addFeather = 'assets/images/icons/add-feather.png';

  /// angle-back.png icon path
  static const String angleBack = 'assets/images/icons/angle-back.png';

  /// apple-fill.png icon path
  static const String appleFill = 'assets/images/icons/apple-fill.png';

  /// bell-fill.png icon path
  static const String bellFill = 'assets/images/icons/bell-fill.png';

  /// bell.png icon path
  static const String bell = 'assets/images/icons/bell.png';

  /// bookmark.png icon path
  static const String bookmark = 'assets/images/icons/bookmark.png';

  /// bulb.png icon path
  static const String bulb = 'assets/images/icons/bulb.png';

  /// calendar.png icon path
  static const String calendar = 'assets/images/icons/calendar.png';

  /// circle.png icon path
  static const String circle = 'assets/images/icons/circle.png';

  /// close.png icon path
  static const String close = 'assets/images/icons/close.png';

  /// down.png icon path
  static const String down = 'assets/images/icons/down.png';

  /// eye-crossed.png icon path
  static const String eyeCrossed = 'assets/images/icons/eye-crossed.png';

  /// eye.png icon path
  static const String eye = 'assets/images/icons/eye.png';

  /// feature.png icon path
  static const String feature = 'assets/images/icons/feature.png';

  /// gif.png icon path
  static const String gif = 'assets/images/icons/gif.png';

  /// google.png icon path
  static const String google = 'assets/images/icons/google.png';

  /// hash.png icon path
  static const String hash = 'assets/images/icons/hash.png';

  /// heart-fill.png icon path
  static const String heartFill = 'assets/images/icons/heart-fill.png';

  /// heart.png icon path
  static const String heart = 'assets/images/icons/heart.png';

  /// home-fill.png icon path
  static const String homeFill = 'assets/images/icons/home-fill.png';

  /// home.png icon path
  static const String home = 'assets/images/icons/home.png';

  /// image.png icon path
  static const String image = 'assets/images/icons/image.png';

  /// info-menu-circle.png icon path
  static const String infoMenuCircle =
      'assets/images/icons/info-menu-circle.png';

  /// info-menu.png icon path
  static const String infoMenu = 'assets/images/icons/info-menu.png';

  /// link.png icon path
  static const String link = 'assets/images/icons/link.png';

  /// list.png icon path
  static const String list = 'assets/images/icons/list.png';

  /// mail-fill.png icon path
  static const String mailFill = 'assets/images/icons/mail-fill.png';

  /// mail.png icon path
  static const String mail = 'assets/images/icons/mail.png';

  /// map-pin.png icon path
  static const String mapPin = 'assets/images/icons/map-pin.png';

  /// pin.png icon path
  static const String pin = 'assets/images/icons/pin.png';

  /// plus.png icon path
  static const String plus = 'assets/images/icons/plus.png';

  /// poll.png icon path
  static const String poll = 'assets/images/icons/poll.png';

  /// qr.png icon path
  static const String qr = 'assets/images/icons/qr.png';

  /// reply.png icon path
  static const String reply = 'assets/images/icons/reply.png';

  /// reply-fill.png icon path
  static const String replyFill = 'assets/images/icons/reply-fill.png';

  /// Retweet.png icon path
  static const String retweet = 'assets/images/icons/Retweet.png';

  /// search-fill.png icon path
  static const String searchFill = 'assets/images/icons/search-fill.png';

  /// search.png icon path
  static const String search = 'assets/images/icons/search.png';

  /// share.png icon path
  static const String share = 'assets/images/icons/share.png';

  /// topics.png icon path
  static const String topics = 'assets/images/icons/topics.png';

  /// user.png icon path
  static const String user = 'assets/images/icons/user.png';

  /// user-fill.png icon path
  static const String userFill = 'assets/images/icons/user-fill.png';

  /// Retrieves icon name from path
  static String getName(String path) {
    return path.split('/').last.replaceAll('.png', '');
  }

  /// List of all icon paths
  static const List<String> iconPaths = [
    addFeather,
    angleBack,
    appleFill,
    bellFill,
    bell,
    bookmark,
    bulb,
    calendar,
    circle,
    close,
    down,
    eyeCrossed,
    eye,
    feature,
    gif,
    google,
    hash,
    heartFill,
    heart,
    homeFill,
    home,
    image,
    infoMenuCircle,
    infoMenu,
    link,
    list,
    mailFill,
    mail,
    mapPin,
    pin,
    plus,
    poll,
    qr,
    reply,
    replyFill,
    retweet,
    searchFill,
    search,
    share,
    topics,
    user,
    userFill,
  ];
}
