import 'package:building/model/value_objects/email.dart';
import 'package:building/model/value_objects/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup.freezed.dart';

@freezed
class Signup with _$Signup {
  const factory Signup({
    required Email email,
    required Password password,
    required Password passwordConfirm,
    required bool rememberMe,
  }) = _Signup;
}
