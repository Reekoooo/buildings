import 'package:building/model/building/building.dart';
import 'package:building/model/flat/flat.dart';
import 'package:building/model/value_objects/email.dart';
import 'package:building/model/user/user_profile.dart';
import 'package:building/model/value_objects/id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

enum Role {
  @JsonValue('user')
  user,
  @JsonValue('admin')
  admin
}

String _idToJson(Id _id) => _id.id;

Id _idFromJson(String _id) => Id(_id);

String _emailToJson(Email email) => email.email;

Email _emailFromJson(String email) => Email(email);

Map<String, dynamic>? _userProfileToJson(UserProfileUnion profile) {
  return profile.map(
      normal: (normal) => normal.toJson(), empty: (empty) => null);
}

UserProfileUnion _userProfileFromJson(Map<String, dynamic>? json) {
  if (json == null) return EmptyUserProfile();
  return UserProfile.fromJson(json);
}

List<BuildingId> _buildingOwnerFromJson(List<dynamic> json) {
  return json.map((building) => BuildingId(id: Id(building))).toList();
}

List<dynamic> _buildingOwnerToJson(List<BuildingId> buildings) {
  return buildings.map((building) => building.id.id).toList();
}

List<FlatId> _flatFromJson(List<dynamic> json) {
  return json.map((flat) => FlatId(id: Id(flat))).toList();
}

List<dynamic> _flatToJson(List<FlatId> flats) {
  return flats.map((flat) => flat.id.id).toList();
}

@freezed
class UserUnion with _$UserUnion {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory UserUnion.user({
    @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
        required Id id,
    @Default(EmptyUserProfile())
    @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson)
        UserProfileUnion profile,
    @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson)
        required Email email,
    required Role role,
    @Default(const [])
   // @JsonKey(toJson: _buildingOwnerToJson, fromJson: _buildingOwnerFromJson)
        List<Building> buildingOwner,
    @Default(const [])
    //@JsonKey(toJson: _flatToJson, fromJson: _flatFromJson)
        List<Flat> flatOwner,
    @Default(const [])
    //@JsonKey(toJson: _flatToJson, fromJson: _flatFromJson)
        List<Flat> flatResident,
  }) = User;

  const factory UserUnion.id({
    @JsonKey(name: '_id', toJson: _idToJson, fromJson: _idFromJson)
        required Id id,
  }) = UserId;

  const factory UserUnion.unauthenticated() = UnAuthenticatedUser;

  factory UserUnion.fromJson(Map<String, dynamic> json) =>
      _$UserUnionFromJson(json);
}
