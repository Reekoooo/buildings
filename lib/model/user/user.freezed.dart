// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserUnion _$UserUnionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'user':
      return User.fromJson(json);
    case 'id':
      return UserId.fromJson(json);
    case 'unauthenticated':
      return UnAuthenticatedUser.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$UserUnionTearOff {
  const _$UserUnionTearOff();

  User user(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required Id id,
      @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
          UserProfileUnion profile = const EmptyUserProfile(),
      @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
          required Email email,
      required Role role,
      List<Building> buildingOwner = const [],
      List<Flat> flatOwner = const [],
      List<Flat> flatResident = const []}) {
    return User(
      id: id,
      profile: profile,
      email: email,
      role: role,
      buildingOwner: buildingOwner,
      flatOwner: flatOwner,
      flatResident: flatResident,
    );
  }

  UserId id(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required Id id}) {
    return UserId(
      id: id,
    );
  }

  UnAuthenticatedUser unauthenticated() {
    return const UnAuthenticatedUser();
  }

  UserUnion fromJson(Map<String, Object> json) {
    return UserUnion.fromJson(json);
  }
}

/// @nodoc
const $UserUnion = _$UserUnionTearOff();

/// @nodoc
mixin _$UserUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)
        user,
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)
        id,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)?
        user,
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)?
        id,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(User value) user,
    required TResult Function(UserId value) id,
    required TResult Function(UnAuthenticatedUser value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(User value)? user,
    TResult Function(UserId value)? id,
    TResult Function(UnAuthenticatedUser value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUnionCopyWith<$Res> {
  factory $UserUnionCopyWith(UserUnion value, $Res Function(UserUnion) then) =
      _$UserUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserUnionCopyWithImpl<$Res> implements $UserUnionCopyWith<$Res> {
  _$UserUnionCopyWithImpl(this._value, this._then);

  final UserUnion _value;
  // ignore: unused_field
  final $Res Function(UserUnion) _then;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          Id id,
      @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
          UserProfileUnion profile,
      @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
          Email email,
      Role role,
      List<Building> buildingOwner,
      List<Flat> flatOwner,
      List<Flat> flatResident});

  $UserProfileUnionCopyWith<$Res> get profile;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> extends _$UserUnionCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(User _value, $Res Function(User) _then)
      : super(_value, (v) => _then(v as User));

  @override
  User get _value => super._value as User;

  @override
  $Res call({
    Object? id = freezed,
    Object? profile = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? buildingOwner = freezed,
    Object? flatOwner = freezed,
    Object? flatResident = freezed,
  }) {
    return _then(User(
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
class _$User implements User {
  const _$User(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required this.id,
      @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
          this.profile = const EmptyUserProfile(),
      @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
          required this.email,
      required this.role,
      this.buildingOwner = const [],
      this.flatOwner = const [],
      this.flatResident = const []});

  factory _$User.fromJson(Map<String, dynamic> json) => _$_$UserFromJson(json);

  @override
  @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
  final Id id;
  @override
  @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
  final UserProfileUnion profile;
  @override
  @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
  final Email email;
  @override
  final Role role;
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
    return 'UserUnion.user(id: $id, profile: $profile, email: $email, role: $role, buildingOwner: $buildingOwner, flatOwner: $flatOwner, flatResident: $flatResident)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
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
      const DeepCollectionEquality().hash(buildingOwner) ^
      const DeepCollectionEquality().hash(flatOwner) ^
      const DeepCollectionEquality().hash(flatResident);

  @JsonKey(ignore: true)
  @override
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)
        user,
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)
        id,
    required TResult Function() unauthenticated,
  }) {
    return user(
        this.id, profile, email, role, buildingOwner, flatOwner, flatResident);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)?
        user,
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)?
        id,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this.id, profile, email, role, buildingOwner, flatOwner,
          flatResident);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(User value) user,
    required TResult Function(UserId value) id,
    required TResult Function(UnAuthenticatedUser value) unauthenticated,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(User value)? user,
    TResult Function(UserId value)? id,
    TResult Function(UnAuthenticatedUser value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserToJson(this)..['runtimeType'] = 'user';
  }
}

abstract class User implements UserUnion {
  const factory User(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required Id id,
      @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
          UserProfileUnion profile,
      @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
          required Email email,
      required Role role,
      List<Building> buildingOwner,
      List<Flat> flatOwner,
      List<Flat> flatResident}) = _$User;

  factory User.fromJson(Map<String, dynamic> json) = _$User.fromJson;

  @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
  UserProfileUnion get profile => throw _privateConstructorUsedError;
  @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
  Email get email => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  List<Building> get buildingOwner => throw _privateConstructorUsedError;
  List<Flat> get flatOwner => throw _privateConstructorUsedError;
  List<Flat> get flatResident => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdCopyWith<$Res> {
  factory $UserIdCopyWith(UserId value, $Res Function(UserId) then) =
      _$UserIdCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson) Id id});
}

/// @nodoc
class _$UserIdCopyWithImpl<$Res> extends _$UserUnionCopyWithImpl<$Res>
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
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required this.id});

  factory _$UserId.fromJson(Map<String, dynamic> json) =>
      _$_$UserIdFromJson(json);

  @override
  @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
  final Id id;

  @override
  String toString() {
    return 'UserUnion.id(id: $id)';
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
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)
        user,
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)
        id,
    required TResult Function() unauthenticated,
  }) {
    return id(this.id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)?
        user,
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)?
        id,
    TResult Function()? unauthenticated,
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
    required TResult Function(User value) user,
    required TResult Function(UserId value) id,
    required TResult Function(UnAuthenticatedUser value) unauthenticated,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(User value)? user,
    TResult Function(UserId value)? id,
    TResult Function(UnAuthenticatedUser value)? unauthenticated,
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

abstract class UserId implements UserUnion {
  const factory UserId(
      {@JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
          required Id id}) = _$UserId;

  factory UserId.fromJson(Map<String, dynamic> json) = _$UserId.fromJson;

  @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
  Id get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIdCopyWith<UserId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnAuthenticatedUserCopyWith<$Res> {
  factory $UnAuthenticatedUserCopyWith(
          UnAuthenticatedUser value, $Res Function(UnAuthenticatedUser) then) =
      _$UnAuthenticatedUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthenticatedUserCopyWithImpl<$Res>
    extends _$UserUnionCopyWithImpl<$Res>
    implements $UnAuthenticatedUserCopyWith<$Res> {
  _$UnAuthenticatedUserCopyWithImpl(
      UnAuthenticatedUser _value, $Res Function(UnAuthenticatedUser) _then)
      : super(_value, (v) => _then(v as UnAuthenticatedUser));

  @override
  UnAuthenticatedUser get _value => super._value as UnAuthenticatedUser;
}

/// @nodoc
@JsonSerializable()
class _$UnAuthenticatedUser implements UnAuthenticatedUser {
  const _$UnAuthenticatedUser();

  factory _$UnAuthenticatedUser.fromJson(Map<String, dynamic> json) =>
      _$_$UnAuthenticatedUserFromJson(json);

  @override
  String toString() {
    return 'UserUnion.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthenticatedUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)
        user,
    required TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)
        id,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id,
            @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
                UserProfileUnion profile,
            @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
                Email email,
            Role role,
            List<Building> buildingOwner,
            List<Flat> flatOwner,
            List<Flat> flatResident)?
        user,
    TResult Function(
            @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
                Id id)?
        id,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(User value) user,
    required TResult Function(UserId value) id,
    required TResult Function(UnAuthenticatedUser value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(User value)? user,
    TResult Function(UserId value)? id,
    TResult Function(UnAuthenticatedUser value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UnAuthenticatedUserToJson(this)
      ..['runtimeType'] = 'unauthenticated';
  }
}

abstract class UnAuthenticatedUser implements UserUnion {
  const factory UnAuthenticatedUser() = _$UnAuthenticatedUser;

  factory UnAuthenticatedUser.fromJson(Map<String, dynamic> json) =
      _$UnAuthenticatedUser.fromJson;
}
