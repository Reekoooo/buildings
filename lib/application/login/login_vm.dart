import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_vm.freezed.dart';

@freezed
class LoginVm with _$LoginVm {
  const factory LoginVm(
      {required String email,
      String? emailError,
      required String password,
      String? passwordError,
      required bool rememberMe,
      required bool isLoading,
      void Function()? onLoginPress,
      String? loginError}) = _LoginVm;

  factory LoginVm.initial() => const LoginVm(
        email: '',
        password: '',
        rememberMe: true,
        isLoading: false,
        onLoginPress: null,
      );
}
