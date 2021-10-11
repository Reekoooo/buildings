// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileUnion _$UserProfileUnionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'normal':
      return UserProfile.fromJson(json);
    case 'empty':
      return EmptyUserProfile.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$UserProfileUnionTearOff {
  const _$UserProfileUnionTearOff();

  UserProfile normal(
      {@JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
          required FirstName firstName,
      @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
          required LastName lastName,
      @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
          String? profileImage}) {
    return UserProfile(
      firstName: firstName,
      lastName: lastName,
      profileImage: profileImage,
    );
  }

  EmptyUserProfile empty() {
    return const EmptyUserProfile();
  }

  UserProfileUnion fromJson(Map<String, Object> json) {
    return UserProfileUnion.fromJson(json);
  }
}

/// @nodoc
const $UserProfileUnion = _$UserProfileUnionTearOff();

/// @nodoc
mixin _$UserProfileUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
                FirstName firstName,
            @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
                LastName lastName,
            @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
                String? profileImage)
        normal,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
                FirstName firstName,
            @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
                LastName lastName,
            @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
                String? profileImage)?
        normal,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfile value) normal,
    required TResult Function(EmptyUserProfile value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfile value)? normal,
    TResult Function(EmptyUserProfile value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileUnionCopyWith<$Res> {
  factory $UserProfileUnionCopyWith(
          UserProfileUnion value, $Res Function(UserProfileUnion) then) =
      _$UserProfileUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileUnionCopyWithImpl<$Res>
    implements $UserProfileUnionCopyWith<$Res> {
  _$UserProfileUnionCopyWithImpl(this._value, this._then);

  final UserProfileUnion _value;
  // ignore: unused_field
  final $Res Function(UserProfileUnion) _then;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
          FirstName firstName,
      @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
          LastName lastName,
      @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
          String? profileImage});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    extends _$UserProfileUnionCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(
      UserProfile _value, $Res Function(UserProfile) _then)
      : super(_value, (v) => _then(v as UserProfile));

  @override
  UserProfile get _value => super._value as UserProfile;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(UserProfile(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfile implements UserProfile {
  const _$UserProfile(
      {@JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
          required this.firstName,
      @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
          required this.lastName,
      @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
          this.profileImage});

  factory _$UserProfile.fromJson(Map<String, dynamic> json) =>
      _$_$UserProfileFromJson(json);

  @override
  @JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
  final FirstName firstName;
  @override
  @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
  final LastName lastName;
  @override
  @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
  final String? profileImage;

  @override
  String toString() {
    return 'UserProfileUnion.normal(firstName: $firstName, lastName: $lastName, profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfile &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.profileImage, profileImage) ||
                const DeepCollectionEquality()
                    .equals(other.profileImage, profileImage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(profileImage);

  @JsonKey(ignore: true)
  @override
  $UserProfileCopyWith<UserProfile> get copyWith =>
      _$UserProfileCopyWithImpl<UserProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
                FirstName firstName,
            @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
                LastName lastName,
            @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
                String? profileImage)
        normal,
    required TResult Function() empty,
  }) {
    return normal(firstName, lastName, profileImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
                FirstName firstName,
            @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
                LastName lastName,
            @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
                String? profileImage)?
        normal,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(firstName, lastName, profileImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfile value) normal,
    required TResult Function(EmptyUserProfile value) empty,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfile value)? normal,
    TResult Function(EmptyUserProfile value)? empty,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserProfileToJson(this)..['runtimeType'] = 'normal';
  }
}

abstract class UserProfile implements UserProfileUnion {
  const factory UserProfile(
      {@JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
          required FirstName firstName,
      @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
          required LastName lastName,
      @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
          String? profileImage}) = _$UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfile.fromJson;

  @JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
  FirstName get firstName => throw _privateConstructorUsedError;
  @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
  LastName get lastName => throw _privateConstructorUsedError;
  @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyUserProfileCopyWith<$Res> {
  factory $EmptyUserProfileCopyWith(
          EmptyUserProfile value, $Res Function(EmptyUserProfile) then) =
      _$EmptyUserProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyUserProfileCopyWithImpl<$Res>
    extends _$UserProfileUnionCopyWithImpl<$Res>
    implements $EmptyUserProfileCopyWith<$Res> {
  _$EmptyUserProfileCopyWithImpl(
      EmptyUserProfile _value, $Res Function(EmptyUserProfile) _then)
      : super(_value, (v) => _then(v as EmptyUserProfile));

  @override
  EmptyUserProfile get _value => super._value as EmptyUserProfile;
}

/// @nodoc
@JsonSerializable()
class _$EmptyUserProfile implements EmptyUserProfile {
  const _$EmptyUserProfile();

  factory _$EmptyUserProfile.fromJson(Map<String, dynamic> json) =>
      _$_$EmptyUserProfileFromJson(json);

  @override
  String toString() {
    return 'UserProfileUnion.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyUserProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
                FirstName firstName,
            @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
                LastName lastName,
            @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
                String? profileImage)
        normal,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson)
                FirstName firstName,
            @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson)
                LastName lastName,
            @JsonKey(toJson: _profileImageToJson, fromJson: _profileImageFromJson)
                String? profileImage)?
        normal,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserProfile value) normal,
    required TResult Function(EmptyUserProfile value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserProfile value)? normal,
    TResult Function(EmptyUserProfile value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EmptyUserProfileToJson(this)..['runtimeType'] = 'empty';
  }
}

abstract class EmptyUserProfile implements UserProfileUnion {
  const factory EmptyUserProfile() = _$EmptyUserProfile;

  factory EmptyUserProfile.fromJson(Map<String, dynamic> json) =
      _$EmptyUserProfile.fromJson;
}
