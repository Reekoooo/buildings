
import 'package:building/model/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials.freezed.dart';
@freezed
class Credentials with _$Credentials{
  const factory Credentials({
    required UserUnion user,
    required String token
}) = _Credentials;
}