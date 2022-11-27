import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

/// User data model
@freezed
class User with _$User {
  /// Creates User data model
  const factory User({
    required String id,

    /// User's username (Twitter handle)
    required String username,

    /// User's display name
    required String displayName,

    /// User's avatar url
    String? avatarUrl,

    /// Number of user followers
    @Default(0) int followers,

    /// Number of user following
    @Default(0) int following,
    @Default(0) int tweetsCount,
    String? coverUrl,
    String? bio,
    String? location,
    DateTime? joinDate,
    String? website,
  }) = _User;
}
