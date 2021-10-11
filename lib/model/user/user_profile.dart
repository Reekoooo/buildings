import 'package:building/model/value_objects/name.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

String _firstNameToJson(FirstName name)=> name.firstName;
FirstName _firstNameFromJson(String name) =>FirstName(name);
String _lastNameToJson(LastName name)=> name.lastName;
LastName _lastNameFromJson(String name) =>LastName(name);

String? _profileImageToJson(String? image)=> image;
String? _profileImageFromJson(String? image)=> image;

@freezed
class UserProfileUnion with _$UserProfileUnion{
  const factory UserProfileUnion.normal({
    @JsonKey(toJson: _firstNameToJson, fromJson: _firstNameFromJson) required FirstName firstName,
    @JsonKey(toJson: _lastNameToJson, fromJson: _lastNameFromJson) required LastName lastName,
    @JsonKey(toJson: _profileImageToJson,fromJson: _profileImageFromJson) String? profileImage

  }) = UserProfile;


  const factory UserProfileUnion.empty() = EmptyUserProfile;

  factory UserProfileUnion.fromJson(Map<String,dynamic> json) =>_$UserProfileUnionFromJson(json);
}
