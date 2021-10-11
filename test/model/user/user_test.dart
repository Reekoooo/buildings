import 'package:building/model/user/user.dart';
import 'package:building/model/value_objects/email.dart';
import 'package:building/model/value_objects/id.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'User json',
    () {
      final User user = User(
          id: Id('60cb14349573483888a9e24d'),
          email: Email('s@g.com'),
          role: Role.user,
          );

      expect(User.fromJson(user.toJson()), equals(user));
      final UserId userId = UserId(id: Id('60cb14349573483888a9e24d'));
      final UserId user1 = UserId.fromJson({'_id': '60cb14349573483888a9e24d'});
      expect(userId, equals(user1));
    },

  );
}
