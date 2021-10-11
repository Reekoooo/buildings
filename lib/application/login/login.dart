import 'package:building/model/value_objects/email.dart';
import 'package:building/model/value_objects/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';

@freezed
class Login with _$Login {
  const factory Login({
    required Email email,
    required Password password,
    required bool rememberMe,
  }) = _Login;
}
