

import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_vm.freezed.dart';

@freezed
class SignupVm with _$SignupVm{
  const factory SignupVm({
    required String email,
    String? emailError,
    required String password,
    String? passwordError,
    required String passwordConfirm,
    String? passwordConfirmError,
    required bool rememberMe,
    required bool isLoading,
    void Function()? onSignupPress,
    String? signupError

  }) = _SignupVm;

  factory SignupVm.initial()=> const SignupVm(email: '',password: '',passwordConfirm: '',rememberMe: true,isLoading: false,onSignupPress: null );
}