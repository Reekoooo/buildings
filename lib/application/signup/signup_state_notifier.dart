import 'package:building/application/router/router_provider.dart';
import 'package:building/application/signup/signup.dart';
import 'package:building/application/signup/signup_ui_states.dart';
import 'package:building/application/signup/signup_vm.dart';
import 'package:building/infrastructure/providers/repository_providers.dart';
import 'package:building/model/value_objects/email.dart';
import 'package:building/model/value_objects/password.dart';
import 'package:building/utils/custom_exceptions/login_exception.dart';
import 'package:building/utils/custom_exceptions/validation_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final signupStateProvider = StateNotifierProvider<SignupNotifier, SignupState>(
      (ref) => SignupNotifier(ref.read),
);

class SignupNotifier extends StateNotifier<SignupState>{
  SignupNotifier(this._read)
      : super(SignupState.validation(vm: SignupVm.initial()));

  final Reader _read;
  final Set<ValidationError> validations = {};
  SignupVm vm = SignupVm.initial();
  Email? _email;
  Password? _password;
  Password? _passwordConfirm;
  bool _rememberMe = true;

  void emailChanged(String email) {
    try {
      _email = Email(email);
      validations.remove(EmailValidationError());
      vm = vm.copyWith(emailError: null);
    } on EmailValidationError catch (e) {
      validations.add(EmailValidationError());
      vm = vm.copyWith(emailError: e.message);
    } finally {
      vm = vm.copyWith(email: email, onSignupPress: _signupOnPress);
      state = SignupValidation(vm: vm);
    }
  }
  void passwordChanged(String password) {
    try {
      _password = Password(password);
      validations.remove(PasswordValidationError());
      vm = vm.copyWith(passwordError: null);
    } on PasswordValidationError catch (e) {
      validations.add(PasswordValidationError());
      vm = vm.copyWith(passwordError: e.message);
    } finally {
      vm = vm.copyWith(password: password, onSignupPress: _signupOnPress);
      state = SignupValidation(vm: vm);
    }
  }
  void passwordConfirmChanged(String passwordConfirm){
    try{
      _passwordConfirm = Password(passwordConfirm);
      if (_passwordConfirm != _password) throw PasswordConfirmValidationError();
      validations.remove(PasswordConfirmValidationError());
      vm = vm.copyWith(passwordConfirmError: null);
    } on PasswordValidationError catch(e){
      validations.add(PasswordConfirmValidationError());
      vm = vm.copyWith(passwordConfirmError: e.message);
    } on PasswordConfirmValidationError catch(e){
      validations.add(PasswordConfirmValidationError());
      vm = vm.copyWith(passwordConfirmError: e.message);
    }finally{
      vm = vm.copyWith(passwordConfirm: passwordConfirm,onSignupPress: _signupOnPress);
      state = SignupValidation(vm: vm);
    }
  }
  void rememberMe(bool value) {
    _rememberMe = value;
    vm = vm.copyWith(rememberMe: _rememberMe);
    state = SignupValidation(vm: vm);
  }
  void resetState() {
    _email = null;
    _password = null;
    _rememberMe = true;
    vm = SignupVm.initial();
    state = SignupState.validation(vm: SignupVm.initial());
  }
  void Function()? get _signupOnPress {
    if (validations.isEmpty && _email != null && _password != null && _passwordConfirm != null)
      return _signup;
    return null;
  }
  void _signup() async {
    state = SignupLoadong();
    try {
      final signup =
      Signup(email: _email!, password: _password!,passwordConfirm: _passwordConfirm!, rememberMe: _rememberMe);
      await _read(authRepositoryProvider).signUp(signup: signup);
      state = SignupSuccess();
      _read(pagesProvider.notifier).login(userProfileNeedUpdate: true);
    } on ResponseError catch (e) {
      debugPrint(e.message);
      vm = vm.copyWith(signupError: e.message);
      state = SignupError(vm: vm);
    }
  }
}