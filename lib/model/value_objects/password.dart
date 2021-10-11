
import 'package:building/utils/custom_exceptions/validation_exception.dart';

class Password{
  String? _password;
  String? get password => _password ;
  Password(String password){
    if(password.length < 6 ) throw PasswordValidationError();
    this._password = password;
  }
  @override
  int get hashCode => _password.hashCode;

  @override
  bool operator ==(Object other) =>
      other is Password &&
          other.password == this._password;

  @override
  String toString() {
    return 'password: $_password';
  }

}