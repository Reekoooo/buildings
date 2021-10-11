// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'building.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuildingModel _$BuildingModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'full':
      return Building.fromJson(json);
    case 'id':
      return BuildingId.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$BuildingModelTearOff {
  const _$BuildingModelTearOff();

  Building full(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required Id id,
      required BuildingProfile profile,
      @JsonKey(toJson: _userToJson, fromJson: _userFromJson)
          required UserId owner}) {
    return Building(
      id: id,
      profile: profile,
      owner: owner,
    );
  }

  BuildingId id(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required Id id}) {
    return BuildingId(
      id: id,
    );
  }

  BuildingModel fromJson(Map<String, Object> json) {
    return BuildingModel.fromJson(json);
  }
}

/// @nodoc
const $BuildingModel = _$BuildingModelTearOff();

/// @nodoc
mixin _$BuildingModel {
  @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            BuildingProfile profile,
            @JsonKey(toJson: _userToJson, fromJson: _userFromJson)
                UserId owner)
        full,
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)
        id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            BuildingProfile profile,
            @JsonKey(toJson: _userToJson, fromJson: _userFromJson)
                UserId owner)?
        full,
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)?
        id,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Building value) full,
    required TResult Function(BuildingId value) id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Building value)? full,
    TResult Function(BuildingId value)? id,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildingModelCopyWith<BuildingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingModelCopyWith<$Res> {
  factory $BuildingModelCopyWith(
          BuildingModel value, $Res Function(BuildingModel) then) =
      _$BuildingModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson) Id id});
}

/// @nodoc
class _$BuildingModelCopyWithImpl<$Res>
    implements $BuildingModelCopyWith<$Res> {
  _$BuildingModelCopyWithImpl(this._value, this._then);

  final BuildingModel _value;
  // ignore: unused_field
  final $Res Function(BuildingModel) _then;

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
abstract class $BuildingCopyWith<$Res> implements $BuildingModelCopyWith<$Res> {
  factory $BuildingCopyWith(Building value, $Res Function(Building) then) =
      _$BuildingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson) Id id,
      BuildingProfile profile,
      @JsonKey(toJson: _userToJson, fromJson: _userFromJson) UserId owner});

  $BuildingProfileCopyWith<$Res> get profile;
}

/// @nodoc
class _$BuildingCopyWithImpl<$Res> extends _$BuildingModelCopyWithImpl<$Res>
    implements $BuildingCopyWith<$Res> {
  _$BuildingCopyWithImpl(Building _value, $Res Function(Building) _then)
      : super(_value, (v) => _then(v as Building));

  @override
  Building get _value => super._value as Building;

  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
    Object? owner = freezed,
  }) {
    return _then(Building(
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
              as UserId,
    ));
  }

  @override
  $BuildingProfileCopyWith<$Res> get profile {
    return $BuildingProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Building implements Building {
  const _$Building(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required this.id,
      required this.profile,
      @JsonKey(toJson: _userToJson, fromJson: _userFromJson)
          required this.owner});

  factory _$Building.fromJson(Map<String, dynamic> json) =>
      _$_$BuildingFromJson(json);

  @override
  @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
  final Id id;
  @override
  final BuildingProfile profile;
  @override
  @JsonKey(toJson: _userToJson, fromJson: _userFromJson)
  final UserId owner;

  @override
  String toString() {
    return 'BuildingModel.full(id: $id, profile: $profile, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Building &&
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
  $BuildingCopyWith<Building> get copyWith =>
      _$BuildingCopyWithImpl<Building>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            BuildingProfile profile,
            @JsonKey(toJson: _userToJson, fromJson: _userFromJson)
                UserId owner)
        full,
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)
        id,
  }) {
    return full(this.id, profile, owner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            BuildingProfile profile,
            @JsonKey(toJson: _userToJson, fromJson: _userFromJson)
                UserId owner)?
        full,
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)?
        id,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(this.id, profile, owner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Building value) full,
    required TResult Function(BuildingId value) id,
  }) {
    return full(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Building value)? full,
    TResult Function(BuildingId value)? id,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$BuildingToJson(this)..['runtimeType'] = 'full';
  }
}

abstract class Building implements BuildingModel {
  const factory Building(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required Id id,
      required BuildingProfile profile,
      @JsonKey(toJson: _userToJson, fromJson: _userFromJson)
          required UserId owner}) = _$Building;

  factory Building.fromJson(Map<String, dynamic> json) = _$Building.fromJson;

  @override
  @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;
  BuildingProfile get profile => throw _privateConstructorUsedError;
  @JsonKey(toJson: _userToJson, fromJson: _userFromJson)
  UserId get owner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BuildingCopyWith<Building> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingIdCopyWith<$Res>
    implements $BuildingModelCopyWith<$Res> {
  factory $BuildingIdCopyWith(
          BuildingId value, $Res Function(BuildingId) then) =
      _$BuildingIdCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson) Id id});
}

/// @nodoc
class _$BuildingIdCopyWithImpl<$Res> extends _$BuildingModelCopyWithImpl<$Res>
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
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required this.id});

  factory _$BuildingId.fromJson(Map<String, dynamic> json) =>
      _$_$BuildingIdFromJson(json);

  @override
  @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
  final Id id;

  @override
  String toString() {
    return 'BuildingModel.id(id: $id)';
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
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            BuildingProfile profile,
            @JsonKey(toJson: _userToJson, fromJson: _userFromJson)
                UserId owner)
        full,
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)
        id,
  }) {
    return id(this.id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            BuildingProfile profile,
            @JsonKey(toJson: _userToJson, fromJson: _userFromJson)
                UserId owner)?
        full,
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)?
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
  TResult map<TResult extends Object?>({
    required TResult Function(Building value) full,
    required TResult Function(BuildingId value) id,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Building value)? full,
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

abstract class BuildingId implements BuildingModel {
  const factory BuildingId(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required Id id}) = _$BuildingId;

  factory BuildingId.fromJson(Map<String, dynamic> json) =
      _$BuildingId.fromJson;

  @override
  @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $BuildingIdCopyWith<BuildingId> get copyWith =>
      throw _privateConstructorUsedError;
}
