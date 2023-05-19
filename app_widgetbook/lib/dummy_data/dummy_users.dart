import 'package:core/core.dart';

/// Dummy users data to use in Widgetbook use cases
class DummyUsers {
  /// Widgetbook Twitter Account user
  ///
  /// https://twitter.com/widgetbook_io
  static User widgetbook = User(
    id: '1295991500841639936',
    username: 'widgetbook_io',
    displayName: 'Widgetbook',
    avatarUrl:
        'https://pbs.twimg.com/profile_images/1446021572960133120/UZYljO51_400x400.jpg',
    coverUrl:
        'https://pbs.twimg.com/profile_banners/1295991500841639936/1633593475/1500x500',
    bio: 'Widgetbook is the Storybook and collaboration platform for '
        'Flutter frontend teams | 🚨 Hiring Flutter Devs  👩🏻‍💻👨🏾‍💻',
    location: 'Paderborn, Germany',
    tweetsCount: 93,
    joinDate: DateTime(2020, 8),
  );

  /// Roaa's Twitter Account user
  ///
  /// https://twitter.com/roaakdm
  static User roaakdm = User(
    id: '2780187301',
    username: 'roaakdm',
    displayName: 'Roaa 🦄💙',
    avatarUrl:
        'https://pbs.twimg.com/profile_images/1594924317954949122/R2rIPIoR_400x400.jpg',
    coverUrl:
        'https://pbs.twimg.com/profile_banners/2780187301/1669120082/1500x500',
    bio: 'Senior Flutter Developer @widgetbook_io | @GoogleDevExpert '
        '#Flutter 💙 & Dart | Trying to share what I know | '
        'http://fluttercommunity.social/@roaakdm',
    tweetsCount: 1534,
    location: 'Istanbul, Turkey',
    joinDate: DateTime(2019, 8),
  );

  /// Tim's Twitter Account user
  ///
  /// https://twitter.com/timsneath
  static const User timSneath = User(
    id: '5633712',
    username: 'timsneath',
    displayName: 'Tim Sneath',
    avatarUrl: 'https://pbs.twimg.com/profile_images/1425115522706776065/Gm719oBc_400x400.jpg',
  );
}
