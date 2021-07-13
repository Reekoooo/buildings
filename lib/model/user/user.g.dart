// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: _idFromJson(json['id'] as String),
    profile: _userProfileFromJson(json['profile'] as Map<String, dynamic>?),
    email: _emailFromJson(json['email'] as String),
    role: _$enumDecode(_$RoleEnumMap, json['role']),
    token: json['token'] as String,
    buildingOwner: (json['buildingOwner'] as List<dynamic>?)
            ?.map((e) => Building.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    flatOwner: (json['flatOwner'] as List<dynamic>?)
            ?.map((e) => Flat.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    flatResident: (json['flatResident'] as List<dynamic>?)
            ?.map((e) => Flat.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _idToJson(instance.id));
  writeNotNull('profile', _userProfileToJson(instance.profile));
  writeNotNull('email', _emailToJson(instance.email));
  val['role'] = _$RoleEnumMap[instance.role];
  val['token'] = instance.token;
  val['buildingOwner'] = instance.buildingOwner.map((e) => e.toJson()).toList();
  val['flatOwner'] = instance.flatOwner.map((e) => e.toJson()).toList();
  val['flatResident'] = instance.flatResident.map((e) => e.toJson()).toList();
  return val;
}

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$RoleEnumMap = {
  Role.user: 'user',
  Role.admin: 'admin',
};

_$UserId _$_$UserIdFromJson(Map<String, dynamic> json) {
  return _$UserId(
    id: _idFromJson(json['id'] as String),
  );
}

Map<String, dynamic> _$_$UserIdToJson(_$UserId instance) => <String, dynamic>{
      'id': _idToJson(instance.id),
    };
