/// User data model
class User {
  /// Creates User data model
  const User({
    required this.id,
    required this.username,
    required this.displayName,
    this.avatarUrl,
    this.followers = 0,
    this.following = 0,
  });

  /// User id
  final String id;

  /// User's username (Twitter handle)
  final String username;

  /// User's display name
  final String displayName;

  /// User's avatar url
  final String? avatarUrl;

  /// Number of user followers
  final int followers;

  /// Number of user following
  final int following;
}
