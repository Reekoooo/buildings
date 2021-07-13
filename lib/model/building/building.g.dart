// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Building _$_$_BuildingFromJson(Map<String, dynamic> json) {
  return _$_Building(
    id: _idFromJson(json['id'] as String),
    profile: BuildingProfile.fromJson(json['profile'] as Map<String, dynamic>),
    owner: User.fromJson(json['owner'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_BuildingToJson(_$_Building instance) =>
    <String, dynamic>{
      'id': _idToJson(instance.id),
      'profile': instance.profile,
      'owner': instance.owner,
    };

_$BuildingId _$_$BuildingIdFromJson(Map<String, dynamic> json) {
  return _$BuildingId(
    id: _idFromJson(json['id'] as String),
  );
}

Map<String, dynamic> _$_$BuildingIdToJson(_$BuildingId instance) =>
    <String, dynamic>{
      'id': _idToJson(instance.id),
    };
