
import 'package:building/application/signup/signup_vm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_ui_states.freezed.dart';

@freezed
class SignupState with _$SignupState{

  const factory SignupState.loading() = SignupLoadong;
  const factory SignupState.success() = SignupSuccess;
  const factory SignupState.validation({required SignupVm vm}) = SignupValidation;
  const factory SignupState.error({required SignupVm vm}) = SignupError;

}