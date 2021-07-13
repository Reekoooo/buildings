// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'building.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Building _$BuildingFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return _Building.fromJson(json);
    case 'id':
      return BuildingId.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$BuildingTearOff {
  const _$BuildingTearOff();

  _Building call(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required Id id,
      required BuildingProfile profile,
      required User owner}) {
    return _Building(
      id: id,
      profile: profile,
      owner: owner,
    );
  }

  BuildingId id(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required Id id}) {
    return BuildingId(
      id: id,
    );
  }

  Building fromJson(Map<String, Object> json) {
    return Building.fromJson(json);
  }
}

/// @nodoc
const $Building = _$BuildingTearOff();

/// @nodoc
mixin _$Building {
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id,
            BuildingProfile profile, User owner)
        $default, {
    required TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)
        id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id,
            BuildingProfile profile, User owner)?
        $default, {
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)?
        id,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Building value) $default, {
    required TResult Function(BuildingId value) id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Building value)? $default, {
    TResult Function(BuildingId value)? id,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildingCopyWith<Building> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingCopyWith<$Res> {
  factory $BuildingCopyWith(Building value, $Res Function(Building) then) =
      _$BuildingCopyWithImpl<$Res>;
  $Res call({@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id});
}

/// @nodoc
class _$BuildingCopyWithImpl<$Res> implements $BuildingCopyWith<$Res> {
  _$BuildingCopyWithImpl(this._value, this._then);

  final Building _value;
  // ignore: unused_field
  final $Res Function(Building) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
    ));
  }
}

/// @nodoc
abstract class _$BuildingCopyWith<$Res> implements $BuildingCopyWith<$Res> {
  factory _$BuildingCopyWith(_Building value, $Res Function(_Building) then) =
      __$BuildingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id,
      BuildingProfile profile,
      User owner});

  $BuildingProfileCopyWith<$Res> get profile;
  $UserCopyWith<$Res> get owner;
}

/// @nodoc
class __$BuildingCopyWithImpl<$Res> extends _$BuildingCopyWithImpl<$Res>
    implements _$BuildingCopyWith<$Res> {
  __$BuildingCopyWithImpl(_Building _value, $Res Function(_Building) _then)
      : super(_value, (v) => _then(v as _Building));

  @override
  _Building get _value => super._value as _Building;

  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
    Object? owner = freezed,
  }) {
    return _then(_Building(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as BuildingProfile,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $BuildingProfileCopyWith<$Res> get profile {
    return $BuildingProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }

  @override
  $UserCopyWith<$Res> get owner {
    return $UserCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_Building implements _Building {
  const _$_Building(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required this.id,
      required this.profile,
      required this.owner});

  factory _$_Building.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildingFromJson(json);

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  final Id id;
  @override
  final BuildingProfile profile;
  @override
  final User owner;

  @override
  String toString() {
    return 'Building(id: $id, profile: $profile, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Building &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(owner);

  @JsonKey(ignore: true)
  @override
  _$BuildingCopyWith<_Building> get copyWith =>
      __$BuildingCopyWithImpl<_Building>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id,
            BuildingProfile profile, User owner)
        $default, {
    required TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)
        id,
  }) {
    return $default(this.id, profile, owner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id,
            BuildingProfile profile, User owner)?
        $default, {
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)?
        id,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this.id, profile, owner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Building value) $default, {
    required TResult Function(BuildingId value) id,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Building value)? $default, {
    TResult Function(BuildingId value)? id,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildingToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _Building implements Building {
  const factory _Building(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required Id id,
      required BuildingProfile profile,
      required User owner}) = _$_Building;

  factory _Building.fromJson(Map<String, dynamic> json) = _$_Building.fromJson;

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;
  BuildingProfile get profile => throw _privateConstructorUsedError;
  User get owner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BuildingCopyWith<_Building> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingIdCopyWith<$Res> implements $BuildingCopyWith<$Res> {
  factory $BuildingIdCopyWith(
          BuildingId value, $Res Function(BuildingId) then) =
      _$BuildingIdCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id});
}

/// @nodoc
class _$BuildingIdCopyWithImpl<$Res> extends _$BuildingCopyWithImpl<$Res>
    implements $BuildingIdCopyWith<$Res> {
  _$BuildingIdCopyWithImpl(BuildingId _value, $Res Function(BuildingId) _then)
      : super(_value, (v) => _then(v as BuildingId));

  @override
  BuildingId get _value => super._value as BuildingId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(BuildingId(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BuildingId implements BuildingId {
  const _$BuildingId(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required this.id});

  factory _$BuildingId.fromJson(Map<String, dynamic> json) =>
      _$_$BuildingIdFromJson(json);

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  final Id id;

  @override
  String toString() {
    return 'Building.id(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BuildingId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $BuildingIdCopyWith<BuildingId> get copyWith =>
      _$BuildingIdCopyWithImpl<BuildingId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id,
            BuildingProfile profile, User owner)
        $default, {
    required TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)
        id,
  }) {
    return id(this.id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id,
            BuildingProfile profile, User owner)?
        $default, {
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)?
        id,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this.id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Building value) $default, {
    required TResult Function(BuildingId value) id,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Building value)? $default, {
    TResult Function(BuildingId value)? id,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$BuildingIdToJson(this)..['runtimeType'] = 'id';
  }
}

abstract class BuildingId implements Building {
  const factory BuildingId(
          {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required Id id}) =
      _$BuildingId;

  factory BuildingId.fromJson(Map<String, dynamic> json) =
      _$BuildingId.fromJson;

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BuildingIdCopyWith<BuildingId> get copyWith =>
      throw _privateConstructorUsedError;
}
