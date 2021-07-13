// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return _User.fromJson(json);
    case 'id':
      return UserId.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson)
          required Id id,
      @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
          UserProfileUnion profile = const EmptyUserProfile(),
      @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
          required Email email,
      required Role role,
      required String token,
      List<Building> buildingOwner = const [],
      List<Flat> flatOwner = const [],
      List<Flat> flatResident = const []}) {
    return _User(
      id: id,
      profile: profile,
      email: email,
      role: role,
      token: token,
      buildingOwner: buildingOwner,
      flatOwner: flatOwner,
      flatResident: flatResident,
    );
  }

  UserId id(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required Id id}) {
    return UserId(
      id: id,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            String token,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)
        $default, {
    required TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)
        id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            String token,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)?
        $default, {
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)?
        id,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(UserId value) id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(UserId value)? id,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

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
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson)
          Id id,
      @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
          UserProfileUnion profile,
      @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
          Email email,
      Role role,
      String token,
      List<Building> buildingOwner,
      List<Flat> flatOwner,
      List<Flat> flatResident});

  $UserProfileUnionCopyWith<$Res> get profile;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? token = freezed,
    Object? buildingOwner = freezed,
    Object? flatOwner = freezed,
    Object? flatResident = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfileUnion,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      buildingOwner: buildingOwner == freezed
          ? _value.buildingOwner
          : buildingOwner // ignore: cast_nullable_to_non_nullable
              as List<Building>,
      flatOwner: flatOwner == freezed
          ? _value.flatOwner
          : flatOwner // ignore: cast_nullable_to_non_nullable
              as List<Flat>,
      flatResident: flatResident == freezed
          ? _value.flatResident
          : flatResident // ignore: cast_nullable_to_non_nullable
              as List<Flat>,
    ));
  }

  @override
  $UserProfileUnionCopyWith<$Res> get profile {
    return $UserProfileUnionCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_User implements _User {
  const _$_User(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson)
          required this.id,
      @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
          this.profile = const EmptyUserProfile(),
      @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
          required this.email,
      required this.role,
      required this.token,
      this.buildingOwner = const [],
      this.flatOwner = const [],
      this.flatResident = const []});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  final Id id;
  @override
  @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
  final UserProfileUnion profile;
  @override
  @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
  final Email email;
  @override
  final Role role;
  @override
  final String token;
  @JsonKey(defaultValue: const [])
  @override
  final List<Building> buildingOwner;
  @JsonKey(defaultValue: const [])
  @override
  final List<Flat> flatOwner;
  @JsonKey(defaultValue: const [])
  @override
  final List<Flat> flatResident;

  @override
  String toString() {
    return 'User(id: $id, profile: $profile, email: $email, role: $role, token: $token, buildingOwner: $buildingOwner, flatOwner: $flatOwner, flatResident: $flatResident)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.buildingOwner, buildingOwner) ||
                const DeepCollectionEquality()
                    .equals(other.buildingOwner, buildingOwner)) &&
            (identical(other.flatOwner, flatOwner) ||
                const DeepCollectionEquality()
                    .equals(other.flatOwner, flatOwner)) &&
            (identical(other.flatResident, flatResident) ||
                const DeepCollectionEquality()
                    .equals(other.flatResident, flatResident)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(buildingOwner) ^
      const DeepCollectionEquality().hash(flatOwner) ^
      const DeepCollectionEquality().hash(flatResident);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            String token,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)
        $default, {
    required TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)
        id,
  }) {
    return $default(this.id, profile, email, role, token, buildingOwner,
        flatOwner, flatResident);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            String token,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)?
        $default, {
    TResult Function(@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id)?
        id,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this.id, profile, email, role, token, buildingOwner,
          flatOwner, flatResident);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(UserId value) id,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(UserId value)? id,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson)
          required Id id,
      @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
          UserProfileUnion profile,
      @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
          required Email email,
      required Role role,
      required String token,
      List<Building> buildingOwner,
      List<Flat> flatOwner,
      List<Flat> flatResident}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
  UserProfileUnion get profile => throw _privateConstructorUsedError;
  @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
  Email get email => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  List<Building> get buildingOwner => throw _privateConstructorUsedError;
  List<Flat> get flatOwner => throw _privateConstructorUsedError;
  List<Flat> get flatResident => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $UserIdCopyWith(UserId value, $Res Function(UserId) then) =
      _$UserIdCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(toJson: _idToJson, fromJson: _idFromJson) Id id});
}

/// @nodoc
class _$UserIdCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $UserIdCopyWith<$Res> {
  _$UserIdCopyWithImpl(UserId _value, $Res Function(UserId) _then)
      : super(_value, (v) => _then(v as UserId));

  @override
  UserId get _value => super._value as UserId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(UserId(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Id,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserId implements UserId {
  const _$UserId(
      {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required this.id});

  factory _$UserId.fromJson(Map<String, dynamic> json) =>
      _$_$UserIdFromJson(json);

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  final Id id;

  @override
  String toString() {
    return 'User.id(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $UserIdCopyWith<UserId> get copyWith =>
      _$UserIdCopyWithImpl<UserId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            String token,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)
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
    TResult Function(
            @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            String token,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)?
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
    TResult Function(_User value) $default, {
    required TResult Function(UserId value) id,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(UserId value)? id,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserIdToJson(this)..['runtimeType'] = 'id';
  }
}

abstract class UserId implements User {
  const factory UserId(
          {@JsonKey(toJson: _idToJson, fromJson: _idFromJson) required Id id}) =
      _$UserId;

  factory UserId.fromJson(Map<String, dynamic> json) = _$UserId.fromJson;

  @override
  @JsonKey(toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UserIdCopyWith<UserId> get copyWith => throw _privateConstructorUsedError;
}
