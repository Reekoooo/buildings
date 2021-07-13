// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BuildingProfile _$_$_BuildingProfileFromJson(Map<String, dynamic> json) {
  return _$_BuildingProfile(
    name: _buildingNameFromJson(json['name'] as String),
    address: _addressFromJson(json['address'] as String),
  );
}

Map<String, dynamic> _$_$_BuildingProfileToJson(_$_BuildingProfile instance) =>
    <String, dynamic>{
      'name': _buildingNameToJson(instance.name),
      'address': _addressToJson(instance.address),
    };
