import 'package:building/model/value_objects/name.dart';
import 'package:building/utils/validation_exception.dart';
import 'package:test/test.dart';

void main(){
  test('correct Name ',(){
    final FirstName name = FirstName('MyName');
    expect(name.firstName,equals('MyName'));
  });

  test('Names with one character throw Exception',(){
    expect (()=>FirstName('a'),throwsException);
  });

  test('Names with one character throw NameValidationError exception',(){
    expect(()=>FirstName('a'),throwsA(const TypeMatcher<NameValidationError>()
        .having((e)=> e.message ,'message',equals(NAME_VALIDATION_ERROR_MESSAGE))

    ));
  });

  test ('Names equality',(){
    expect(FirstName('MyName'),equals(FirstName('MyName')));
  });

  test('FirstName LastName equality',(){
    expect(FirstName('MyName'),isNot(LastName('MyName')));
  });
}