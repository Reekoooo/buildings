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

String _idToJson(Id id) => id.id;
Id _idFromJson(String id) => Id(id);

String _emailToJson(Email email) => email.email;
Email _emailFromJson(String email) => Email(email);
Map<String,dynamic>? _userProfileToJson(UserProfileUnion profile) {
  return profile.map(
      normal: (normal)=> normal.toJson(),
      empty: (empty)=>null);
}

UserProfileUnion _userProfileFromJson(Map<String,dynamic>? json){
  if (json == null ) return EmptyUserProfile();
  return UserProfile.fromJson(json);
}

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true,includeIfNull: false)
  const factory User({
      @JsonKey(toJson: _idToJson, fromJson: _idFromJson) required Id id,
      @Default(EmptyUserProfile())
      @JsonKey(toJson: _userProfileToJson, fromJson: _userProfileFromJson )
      //@UserProfileConverter()
      UserProfileUnion profile,

    @JsonKey(toJson: _emailToJson, fromJson: _emailFromJson) required Email email,
      required Role role,
      required String token,
      @Default(const []) List<Building> buildingOwner,
      @Default(const []) List<Flat> flatOwner,
      @Default(const []) List<Flat> flatResident}) = _User;

  const factory User.id({ @JsonKey(toJson: _idToJson, fromJson: _idFromJson) required Id id}) = UserId;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}




