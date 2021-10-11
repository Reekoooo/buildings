// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfile _$_$UserProfileFromJson(Map<String, dynamic> json) {
  return _$UserProfile(
    firstName: _firstNameFromJson(json['firstName'] as String),
    lastName: _lastNameFromJson(json['lastName'] as String),
    profileImage: _profileImageFromJson(json['profileImage'] as String?),
  );
}

Map<String, dynamic> _$_$UserProfileToJson(_$UserProfile instance) =>
    <String, dynamic>{
      'firstName': _firstNameToJson(instance.firstName),
      'lastName': _lastNameToJson(instance.lastName),
      'profileImage': _profileImageToJson(instance.profileImage),
    };

_$EmptyUserProfile _$_$EmptyUserProfileFromJson(Map<String, dynamic> json) {
  return _$EmptyUserProfile();
}

Map<String, dynamic> _$_$EmptyUserProfileToJson(_$EmptyUserProfile instance) =>
    <String, dynamic>{};
