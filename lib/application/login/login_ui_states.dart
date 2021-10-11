
import 'package:building/application/login/login_vm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_ui_states.freezed.dart';

@freezed
class LoginState with _$LoginState{
  //const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success() = LoginSuccess;
  const  factory LoginState.validation({required LoginVm vm}) = LoginValidation;
  const factory LoginState.error({required LoginVm vm}) = LoginError;
}
