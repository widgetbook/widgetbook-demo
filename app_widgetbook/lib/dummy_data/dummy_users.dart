import 'package:core/core.dart';

/// Dummy users data to use in Widgetbook use cases
class DummyUsers {
  /// Widgetbook Twitter Account user
  ///
  /// https://twitter.com/widgetbook_io
  static const User widgetbook = User(
    id: '1295991500841639936',
    username: 'widgetbook_io',
    displayName: 'Widgetbook',
    avatarUrl: 'https://pbs.twimg.com/profile_images/1446021572960133120/UZYljO51_400x400.jpg',
  );

  /// Roaa's Twitter Account user
  ///
  /// https://twitter.com/roaakdm
  static const User roaakdm = User(
    id: '2780187301',
    username: 'roaakdm',
    displayName: 'Roaa 🦄💙',
    avatarUrl: 'https://pbs.twimg.com/profile_images/1581351928931520512/tBc3bMzJ_400x400.jpg',
  );
}
