

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_exception.freezed.dart';

@freezed
class ResponseError with _$ResponseError {

  const factory ResponseError.network({required String message}) = NetworkError;
  const factory ResponseError.e401({required String message}) = Error401;
  const factory ResponseError.e409({required String message}) = Error409;
  const factory ResponseError.e404({required String message}) = Error404;


}