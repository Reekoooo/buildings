
import 'package:building/model/value_objects/email.dart';
import 'package:building/model/value_objects/password.dart';
import 'package:building/utils/validation_exception.dart';
import 'package:test/test.dart';

void main() {
  group('Email', () {
    test('wrong Email will throw exception', () {
      expect(() => Email('a@a'), throwsException);
    });

    test('correct email value ', () {
      final expected = Email('a@a.com').email;
      expect(expected, equals('a@a.com'));
    });

    test('wrong email value will throw EmailValidationError exception',(){
      final invalidEmail = 'a@a';
      expect(()=>Email(invalidEmail),throwsA(const TypeMatcher<EmailValidationError>()
          .having((e)=> e.message ,'message',equals(EMAIL_VALIDATION_ERROR_MESSAGE))

      ));
    });
  });

  group('Password',() {
    test('Wrong password will throw exception',(){
      expect(()=>Password('111'),throwsException);
    });

    test('correct password value',(){
      final expected = Password('password').password;
      expect(expected,equals('password'));
    });

    test('short password will throw PasswordValidationError exception',(){
      final short = '12345';
      expect(()=>Password(short),throwsA(const TypeMatcher<PasswordValidationError>()
          .having((e) => e.message, 'message', equals(PASSWORD_VALIDATION_ERROR_MESSAGE))

      ));
    });
  });
}
