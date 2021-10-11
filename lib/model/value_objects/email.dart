
import 'package:building/utils/custom_exceptions/validation_exception.dart';

class Email{
  late final String  _email;
  String get email => _email;

  Email(String email){
    if (! _isValidEmail(email)) throw EmailValidationError();
    this._email = email;
  }
  @override
  int get hashCode => _email.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this,other) ||
          other is Email &&
              runtimeType == other.runtimeType &&
              other.email == this._email;

  @override
  String toString() {
    return 'email $_email';
  }

  bool _isValidEmail(email) => RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);
}