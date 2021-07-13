


import 'package:building/model/value_objects/name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'building_profile.freezed.dart';
part 'building_profile.g.dart';

String _buildingNameToJson(BuildingName name)=> name.name;
BuildingName _buildingNameFromJson(String name) =>BuildingName(name);
String _addressToJson(Address name)=> name.address;
Address _addressFromJson(String address) =>Address(address);


@freezed
class BuildingProfile with _$BuildingProfile {
   factory BuildingProfile({
    @JsonKey(toJson: _buildingNameToJson,fromJson: _buildingNameFromJson) required BuildingName name,
     @JsonKey(toJson: _addressToJson,fromJson: _addressFromJson) required Address address
  }) = _BuildingProfile;

  factory BuildingProfile.fromJson(Map<String,dynamic> json) =>_$BuildingProfileFromJson(json);
}
