// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Tweet {
  String get rawText => throw _privateConstructorUsedError;
  TweetAnnotationType? get annotationType => throw _privateConstructorUsedError;
  User get author => throw _privateConstructorUsedError;
  List<Media> get media => throw _privateConstructorUsedError;
  PublicMetrics get publicMetrics => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  TweetEntities get entities => throw _privateConstructorUsedError;

  /// Id of the user that this tweet is a reply to
  ///
  /// Only available when this tweet is a reply.
  ///
  /// If available, a `replying to @{inReplyToUser.username}` text
  /// will be shown
  User? get inReplyToUser => throw _privateConstructorUsedError;
  Tweet? get quotedTweet => throw _privateConstructorUsedError;
  TweetSource get source => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TweetCopyWith<Tweet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetCopyWith<$Res> {
  factory $TweetCopyWith(Tweet value, $Res Function(Tweet) then) =
      _$TweetCopyWithImpl<$Res, Tweet>;
  @useResult
  $Res call(
      {String rawText,
      TweetAnnotationType? annotationType,
      User author,
      List<Media> media,
      PublicMetrics publicMetrics,
      DateTime createdAt,
      TweetEntities entities,
      User? inReplyToUser,
      Tweet? quotedTweet,
      TweetSource source});

  $UserCopyWith<$Res> get author;
  $UserCopyWith<$Res>? get inReplyToUser;
  $TweetCopyWith<$Res>? get quotedTweet;
}

/// @nodoc
class _$TweetCopyWithImpl<$Res, $Val extends Tweet>
    implements $TweetCopyWith<$Res> {
  _$TweetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawText = null,
    Object? annotationType = freezed,
    Object? author = null,
    Object? media = null,
    Object? publicMetrics = null,
    Object? createdAt = null,
    Object? entities = null,
    Object? inReplyToUser = freezed,
    Object? quotedTweet = freezed,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      rawText: null == rawText
          ? _value.rawText
          : rawText // ignore: cast_nullable_to_non_nullable
              as String,
      annotationType: freezed == annotationType
          ? _value.annotationType
          : annotationType // ignore: cast_nullable_to_non_nullable
              as TweetAnnotationType?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      publicMetrics: null == publicMetrics
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicMetrics,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as TweetEntities,
      inReplyToUser: freezed == inReplyToUser
          ? _value.inReplyToUser
          : inReplyToUser // ignore: cast_nullable_to_non_nullable
              as User?,
      quotedTweet: freezed == quotedTweet
          ? _value.quotedTweet
          : quotedTweet // ignore: cast_nullable_to_non_nullable
              as Tweet?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as TweetSource,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get author {
    return $UserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get inReplyToUser {
    if (_value.inReplyToUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.inReplyToUser!, (value) {
      return _then(_value.copyWith(inReplyToUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TweetCopyWith<$Res>? get quotedTweet {
    if (_value.quotedTweet == null) {
      return null;
    }

    return $TweetCopyWith<$Res>(_value.quotedTweet!, (value) {
      return _then(_value.copyWith(quotedTweet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TweetCopyWith<$Res> implements $TweetCopyWith<$Res> {
  factory _$$_TweetCopyWith(_$_Tweet value, $Res Function(_$_Tweet) then) =
      __$$_TweetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String rawText,
      TweetAnnotationType? annotationType,
      User author,
      List<Media> media,
      PublicMetrics publicMetrics,
      DateTime createdAt,
      TweetEntities entities,
      User? inReplyToUser,
      Tweet? quotedTweet,
      TweetSource source});

  @override
  $UserCopyWith<$Res> get author;
  @override
  $UserCopyWith<$Res>? get inReplyToUser;
  @override
  $TweetCopyWith<$Res>? get quotedTweet;
}

/// @nodoc
class __$$_TweetCopyWithImpl<$Res> extends _$TweetCopyWithImpl<$Res, _$_Tweet>
    implements _$$_TweetCopyWith<$Res> {
  __$$_TweetCopyWithImpl(_$_Tweet _value, $Res Function(_$_Tweet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawText = null,
    Object? annotationType = freezed,
    Object? author = null,
    Object? media = null,
    Object? publicMetrics = null,
    Object? createdAt = null,
    Object? entities = null,
    Object? inReplyToUser = freezed,
    Object? quotedTweet = freezed,
    Object? source = null,
  }) {
    return _then(_$_Tweet(
      rawText: null == rawText
          ? _value.rawText
          : rawText // ignore: cast_nullable_to_non_nullable
              as String,
      annotationType: freezed == annotationType
          ? _value.annotationType
          : annotationType // ignore: cast_nullable_to_non_nullable
              as TweetAnnotationType?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      publicMetrics: null == publicMetrics
          ? _value.publicMetrics
          : publicMetrics // ignore: cast_nullable_to_non_nullable
              as PublicMetrics,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entities: null == entities
          ? _value.entities
          : entities // ignore: cast_nullable_to_non_nullable
              as TweetEntities,
      inReplyToUser: freezed == inReplyToUser
          ? _value.inReplyToUser
          : inReplyToUser // ignore: cast_nullable_to_non_nullable
              as User?,
      quotedTweet: freezed == quotedTweet
          ? _value.quotedTweet
          : quotedTweet // ignore: cast_nullable_to_non_nullable
              as Tweet?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as TweetSource,
    ));
  }
}

/// @nodoc

class _$_Tweet extends _Tweet {
  const _$_Tweet(
      {required this.rawText,
      this.annotationType,
      required this.author,
      final List<Media> media = const [],
      this.publicMetrics = const PublicMetrics(),
      required this.createdAt,
      this.entities = const TweetEntities(),
      this.inReplyToUser,
      this.quotedTweet,
      required this.source})
      : _media = media,
        super._();

  @override
  final String rawText;
  @override
  final TweetAnnotationType? annotationType;
  @override
  final User author;
  final List<Media> _media;
  @override
  @JsonKey()
  List<Media> get media {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  @JsonKey()
  final PublicMetrics publicMetrics;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final TweetEntities entities;

  /// Id of the user that this tweet is a reply to
  ///
  /// Only available when this tweet is a reply.
  ///
  /// If available, a `replying to @{inReplyToUser.username}` text
  /// will be shown
  @override
  final User? inReplyToUser;
  @override
  final Tweet? quotedTweet;
  @override
  final TweetSource source;

  @override
  String toString() {
    return 'Tweet(rawText: $rawText, annotationType: $annotationType, author: $author, media: $media, publicMetrics: $publicMetrics, createdAt: $createdAt, entities: $entities, inReplyToUser: $inReplyToUser, quotedTweet: $quotedTweet, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tweet &&
            (identical(other.rawText, rawText) || other.rawText == rawText) &&
            (identical(other.annotationType, annotationType) ||
                other.annotationType == annotationType) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.publicMetrics, publicMetrics) ||
                other.publicMetrics == publicMetrics) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.entities, entities) ||
                other.entities == entities) &&
            (identical(other.inReplyToUser, inReplyToUser) ||
                other.inReplyToUser == inReplyToUser) &&
            (identical(other.quotedTweet, quotedTweet) ||
                other.quotedTweet == quotedTweet) &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rawText,
      annotationType,
      author,
      const DeepCollectionEquality().hash(_media),
      publicMetrics,
      createdAt,
      entities,
      inReplyToUser,
      quotedTweet,
      source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TweetCopyWith<_$_Tweet> get copyWith =>
      __$$_TweetCopyWithImpl<_$_Tweet>(this, _$identity);
}

abstract class _Tweet extends Tweet {
  const factory _Tweet(
      {required final String rawText,
      final TweetAnnotationType? annotationType,
      required final User author,
      final List<Media> media,
      final PublicMetrics publicMetrics,
      required final DateTime createdAt,
      final TweetEntities entities,
      final User? inReplyToUser,
      final Tweet? quotedTweet,
      required final TweetSource source}) = _$_Tweet;
  const _Tweet._() : super._();

  @override
  String get rawText;
  @override
  TweetAnnotationType? get annotationType;
  @override
  User get author;
  @override
  List<Media> get media;
  @override
  PublicMetrics get publicMetrics;
  @override
  DateTime get createdAt;
  @override
  TweetEntities get entities;
  @override

  /// Id of the user that this tweet is a reply to
  ///
  /// Only available when this tweet is a reply.
  ///
  /// If available, a `replying to @{inReplyToUser.username}` text
  /// will be shown
  User? get inReplyToUser;
  @override
  Tweet? get quotedTweet;
  @override
  TweetSource get source;
  @override
  @JsonKey(ignore: true)
  _$$_TweetCopyWith<_$_Tweet> get copyWith =>
      throw _privateConstructorUsedError;
}
