import 'package:building/model/user/user_profile.dart';
import 'package:building/model/value_objects/name.dart';
import 'package:test/test.dart';

void main(){
  test('UserProfile json test',(){
    final UserProfile profile = UserProfile(
        firstName: FirstName('MyFirstName'),
        lastName: LastName('MyLastName')
    );

   // final EmptyUserProfile profile = EmptyUserProfile();
    //print(profile.toJson());

    expect(UserProfile.fromJson(profile.toJson()),equals(profile));
  });
}