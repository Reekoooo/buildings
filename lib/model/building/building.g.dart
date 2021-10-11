// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Building _$_$BuildingFromJson(Map<String, dynamic> json) {
  return _$Building(
    id: _idFromJson(json['_id'] as String),
    profile: BuildingProfile.fromJson(json['profile'] as Map<String, dynamic>),
    owner: _userFromJson(json['owner'] as String),
  );
}

Map<String, dynamic> _$_$BuildingToJson(_$Building instance) =>
    <String, dynamic>{
      '_id': _idToJson(instance.id),
      'profile': instance.profile,
      'owner': _userToJson(instance.owner),
    };

_$BuildingId _$_$BuildingIdFromJson(Map<String, dynamic> json) {
  return _$BuildingId(
    id: _idFromJson(json['_id'] as String),
  );
}

Map<String, dynamic> _$_$BuildingIdToJson(_$BuildingId instance) =>
    <String, dynamic>{
      '_id': _idToJson(instance.id),
    };
