import 'package:building/model/value_objects/name.dart';
import 'package:building/utils/custom_exceptions/validation_exception.dart';
import 'package:test/test.dart';

void main(){
 test('correct Text validator min 3 max 10',(){
   final FName name = FName(fName: 'Khalid');
   expect(name.value ,equals('Khalid'));
 });
 test('validation exception when text < 3',(){
   expect(()=>FName(fName: 'qq'), throwsException);
 });
 test('validation exception when text > 10',(){
   expect(()=>FName(fName: '12345678910'), throwsException);
 });
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

  test('Text Validator',(){

  });
}