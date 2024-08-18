// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  @JsonKey(includeToJson: false)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "createdAt", includeToJson: false)
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get console => throw _privateConstructorUsedError;
  @JsonKey(name: "release", includeToJson: false)
  int get release => throw _privateConstructorUsedError;

  /// Serializes this Game to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      @JsonKey(name: "createdAt", includeToJson: false) DateTime createdAt,
      String name,
      String console,
      @JsonKey(name: "release", includeToJson: false) int release});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? console = null,
    Object? release = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      console: null == console
          ? _value.console
          : console // ignore: cast_nullable_to_non_nullable
              as String,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String id,
      @JsonKey(name: "createdAt", includeToJson: false) DateTime createdAt,
      String name,
      String console,
      @JsonKey(name: "release", includeToJson: false) int release});
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? name = null,
    Object? console = null,
    Object? release = null,
  }) {
    return _then(_$GameImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      console: null == console
          ? _value.console
          : console // ignore: cast_nullable_to_non_nullable
              as String,
      release: null == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl extends _Game {
  _$GameImpl(
      {@JsonKey(includeToJson: false) required this.id,
      @JsonKey(name: "createdAt", includeToJson: false) required this.createdAt,
      required this.name,
      required this.console,
      @JsonKey(name: "release", includeToJson: false) required this.release})
      : super._();

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String id;
  @override
  @JsonKey(name: "createdAt", includeToJson: false)
  final DateTime createdAt;
  @override
  final String name;
  @override
  final String console;
  @override
  @JsonKey(name: "release", includeToJson: false)
  final int release;

  @override
  String toString() {
    return 'Game(id: $id, createdAt: $createdAt, name: $name, console: $console, release: $release)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.console, console) || other.console == console) &&
            (identical(other.release, release) || other.release == release));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, name, console, release);

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game extends Game {
  factory _Game(
      {@JsonKey(includeToJson: false) required final String id,
      @JsonKey(name: "createdAt", includeToJson: false)
      required final DateTime createdAt,
      required final String name,
      required final String console,
      @JsonKey(name: "release", includeToJson: false)
      required final int release}) = _$GameImpl;
  _Game._() : super._();

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String get id;
  @override
  @JsonKey(name: "createdAt", includeToJson: false)
  DateTime get createdAt;
  @override
  String get name;
  @override
  String get console;
  @override
  @JsonKey(name: "release", includeToJson: false)
  int get release;

  /// Create a copy of Game
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
