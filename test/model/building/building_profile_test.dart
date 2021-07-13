import 'package:building/model/building/building_profile.dart';
import 'package:building/model/value_objects/name.dart';
import 'package:test/test.dart';

void main(){
  test('BuildingProfile json test',(){
    final BuildingProfile profile = BuildingProfile(
        name: BuildingName('MyBuildingName'),
        address: Address('MyBuildingAddress'),
    );

    expect(BuildingProfile.fromJson(profile.toJson()),equals(profile));
  });
}