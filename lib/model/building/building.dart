


import 'package:building/model/building/building_profile.dart';
import 'package:building/model/user/user.dart';
import 'package:building/model/value_objects/id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'building.freezed.dart';
part 'building.g.dart';

String _idToJson(Id id)=> id.id;
Id _idFromJson(String id) =>Id(id);
// String _addressToJson(Address name)=> name.address;
// Address _addressFromJson(String address) =>Address(address);

@freezed
class Building with _$Building{
  const factory Building({
    @JsonKey(toJson: _idToJson,fromJson: _idFromJson) required Id id,
    required BuildingProfile profile,
    required User owner}) = _Building;
  const factory Building.id({ @JsonKey(toJson: _idToJson,fromJson: _idFromJson) required Id id}) = BuildingId;
  factory Building.fromJson(Map<String,dynamic> json) => _$BuildingFromJson(json);
}