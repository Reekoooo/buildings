// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'building_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuildingProfile _$BuildingProfileFromJson(Map<String, dynamic> json) {
  return _BuildingProfile.fromJson(json);
}

/// @nodoc
class _$BuildingProfileTearOff {
  const _$BuildingProfileTearOff();

  _BuildingProfile call(
      {@JsonKey(toJson: _buildingNameToJson, fromJson: _buildingNameFromJson)
          required BuildingName name,
      @JsonKey(toJson: _addressToJson, fromJson: _addressFromJson)
          required Address address}) {
    return _BuildingProfile(
      name: name,
      address: address,
    );
  }

  BuildingProfile fromJson(Map<String, Object> json) {
    return BuildingProfile.fromJson(json);
  }
}

/// @nodoc
const $BuildingProfile = _$BuildingProfileTearOff();

/// @nodoc
mixin _$BuildingProfile {
  @JsonKey(toJson: _buildingNameToJson, fromJson: _buildingNameFromJson)
  BuildingName get name => throw _privateConstructorUsedError;
  @JsonKey(toJson: _addressToJson, fromJson: _addressFromJson)
  Address get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildingProfileCopyWith<BuildingProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildingProfileCopyWith<$Res> {
  factory $BuildingProfileCopyWith(
          BuildingProfile value, $Res Function(BuildingProfile) then) =
      _$BuildingProfileCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(toJson: _buildingNameToJson, fromJson: _buildingNameFromJson)
          BuildingName name,
      @JsonKey(toJson: _addressToJson, fromJson: _addressFromJson)
          Address address});
}

/// @nodoc
class _$BuildingProfileCopyWithImpl<$Res>
    implements $BuildingProfileCopyWith<$Res> {
  _$BuildingProfileCopyWithImpl(this._value, this._then);

  final BuildingProfile _value;
  // ignore: unused_field
  final $Res Function(BuildingProfile) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BuildingName,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
abstract class _$BuildingProfileCopyWith<$Res>
    implements $BuildingProfileCopyWith<$Res> {
  factory _$BuildingProfileCopyWith(
          _BuildingProfile value, $Res Function(_BuildingProfile) then) =
      __$BuildingProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(toJson: _buildingNameToJson, fromJson: _buildingNameFromJson)
          BuildingName name,
      @JsonKey(toJson: _addressToJson, fromJson: _addressFromJson)
          Address address});
}

/// @nodoc
class __$BuildingProfileCopyWithImpl<$Res>
    extends _$BuildingProfileCopyWithImpl<$Res>
    implements _$BuildingProfileCopyWith<$Res> {
  __$BuildingProfileCopyWithImpl(
      _BuildingProfile _value, $Res Function(_BuildingProfile) _then)
      : super(_value, (v) => _then(v as _BuildingProfile));

  @override
  _BuildingProfile get _value => super._value as _BuildingProfile;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_BuildingProfile(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as BuildingName,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BuildingProfile implements _BuildingProfile {
  _$_BuildingProfile(
      {@JsonKey(toJson: _buildingNameToJson, fromJson: _buildingNameFromJson)
          required this.name,
      @JsonKey(toJson: _addressToJson, fromJson: _addressFromJson)
          required this.address});

  factory _$_BuildingProfile.fromJson(Map<String, dynamic> json) =>
      _$_$_BuildingProfileFromJson(json);

  @override
  @JsonKey(toJson: _buildingNameToJson, fromJson: _buildingNameFromJson)
  final BuildingName name;
  @override
  @JsonKey(toJson: _addressToJson, fromJson: _addressFromJson)
  final Address address;

  @override
  String toString() {
    return 'BuildingProfile(name: $name, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BuildingProfile &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$BuildingProfileCopyWith<_BuildingProfile> get copyWith =>
      __$BuildingProfileCopyWithImpl<_BuildingProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BuildingProfileToJson(this);
  }
}

abstract class _BuildingProfile implements BuildingProfile {
  factory _BuildingProfile(
      {@JsonKey(toJson: _buildingNameToJson, fromJson: _buildingNameFromJson)
          required BuildingName name,
      @JsonKey(toJson: _addressToJson, fromJson: _addressFromJson)
          required Address address}) = _$_BuildingProfile;

  factory _BuildingProfile.fromJson(Map<String, dynamic> json) =
      _$_BuildingProfile.fromJson;

  @override
  @JsonKey(toJson: _buildingNameToJson, fromJson: _buildingNameFromJson)
  BuildingName get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(toJson: _addressToJson, fromJson: _addressFromJson)
  Address get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BuildingProfileCopyWith<_BuildingProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
