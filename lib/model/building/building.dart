


import 'package:building/model/building/building_profile.dart';
import 'package:building/model/user/user.dart';
import 'package:building/model/value_objects/id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'building.freezed.dart';
part 'building.g.dart';

String _idToJson(Id _id)=> _id.id;
Id _idFromJson(String _id) =>Id(_id);
Id _userToJson(UserId user)=> user.id;
UserId _userFromJson(String id) =>UserId(id: Id(id));

@freezed
class BuildingModel with _$BuildingModel{
  const factory BuildingModel.full({
    @JsonKey(name:'_id',toJson: _idToJson,fromJson: _idFromJson)
    required Id id,
    required BuildingProfile profile,
    @JsonKey(toJson: _userToJson,fromJson: _userFromJson)
    required UserId owner}) = Building;
  const factory BuildingModel.id({ @JsonKey(name:'_id',toJson: _idToJson,fromJson: _idFromJson) required Id id}) = BuildingId;
  factory BuildingModel.fromJson(Map<String,dynamic> json) => _$BuildingModelFromJson(json);
}