import 'package:building/model/value_objects/name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

String _firstNameToJson(FirstName name)=> name.firstName;
FirstName _firstNameFromJson(String name) =>FirstName(name);
String _lastNameToJson(LastName name)=> name.lastName;
LastName _lastNameFromJson(String name) =>LastName(name);
@freezed
class UserProfileUnion with _$UserProfileUnion{
  const factory UserProfileUnion.normal({
    @JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson) required FirstName firstName,
    @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson) required LastName lastName}) = UserProfile;

  const factory UserProfileUnion.empty() = EmptyUserProfile;

  factory UserProfileUnion.fromJson(Map<String,dynamic> json) =>_$UserProfileUnionFromJson(json);
}

// class UserProfileConverter implements JsonConverter<UserProfile,Map<String,dynamic>>{
//   @override
//   UserProfile fromJson(Map<String, dynamic> json) {
//    if(json[''])
//   }
//
//   @override
//   Map<String, dynamic> toJson(UserProfile data) {
//     // TODO: implement toJson
//     throw UnimplementedError();
//   }
//
// }