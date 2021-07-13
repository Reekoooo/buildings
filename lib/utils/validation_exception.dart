// class ValidationError implements Exception{
//   final String path;
//   final String message;
//   final int code;
//   ValidationError({required this.path,required this.message,required this.code});
// }

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_exception.freezed.dart';


const String EMAIL_VALIDATION_ERROR_MESSAGE = 'Email is not Valid';
const String PASSWORD_VALIDATION_ERROR_MESSAGE = 'Passwords must be at least 6 characters long';
const String NAME_VALIDATION_ERROR_MESSAGE = 'Name should be between 1 - 20 characters';
const String FLAT_NO_VALIDATION_ERROR_MESSAGE = 'FlatNo must be greater than zero';
const String ID_VALIDATION_ERROR_MESSAGE = 'Not valid Id';
const String FROM_JSON_ERROR_MESSAGE = 'Can\'t convert json to object';

@freezed
class ValidationError with _$ValidationError,Exception{
  const ValidationError._();
  //const factory ValidationError({required String path,required String message,required int code}) = _ValidationError;
  const factory ValidationError.email() = EmailValidationError;
  const factory ValidationError.password() = PasswordValidationError;
  const factory ValidationError.name() = NameValidationError;
  const factory ValidationError.no() = FlatNoValidationError;
  const factory ValidationError.id() = IdValidationError;
  const factory ValidationError.json({required Map<String,dynamic> json,required Object opject}) = FromJsonValidationError;

  String get message => this.map(
      email: (_) => EMAIL_VALIDATION_ERROR_MESSAGE,
      password: (_) => PASSWORD_VALIDATION_ERROR_MESSAGE,
      name: (_)=> NAME_VALIDATION_ERROR_MESSAGE,
      no: (_) => FLAT_NO_VALIDATION_ERROR_MESSAGE,
      id: (_) => ID_VALIDATION_ERROR_MESSAGE,
      json: (json) =>FROM_JSON_ERROR_MESSAGE+ 'json: ${json.json} object: ${json.opject.runtimeType}',
  );
}