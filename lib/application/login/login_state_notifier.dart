import 'package:building/application/login/login.dart';
import 'package:building/application/login/login_ui_states.dart';
import 'package:building/application/login/login_vm.dart';
import 'package:building/application/router/router_provider.dart';
import 'package:building/application/signup/signup_state_notifier.dart';
import 'package:building/infrastructure/datasources/authenticated_user.dart';
import 'package:building/infrastructure/providers/data_sorces_providers.dart';
import 'package:building/infrastructure/providers/repository_providers.dart';
import 'package:building/model/user/user.dart';
import 'package:building/model/user/user_profile.dart';
import 'package:building/model/value_objects/email.dart';
import 'package:building/model/value_objects/password.dart';
import 'package:building/utils/constants.dart';
import 'package:building/utils/custom_exceptions/login_exception.dart';
import 'package:building/utils/custom_exceptions/validation_exception.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginStateProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(ref.read),
);

class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier(this._read) : super(LoginValidation(vm: LoginVm.initial()));

  final Reader _read;
  LoginVm vm = LoginVm.initial();
  final Set<ValidationError> validations = {};
  Email? _email;
  Password? _password;
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
      vm = vm.copyWith(email: email, onLoginPress: _loginOnPress);
      state = LoginValidation(vm: vm);
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
      vm = vm.copyWith(password: password, onLoginPress: _loginOnPress);
      state = LoginValidation(vm: vm);
    }
  }

  void rememberMe(bool value) {
    _rememberMe = value;
    vm = vm.copyWith(rememberMe: _rememberMe);
    state = LoginValidation(vm: vm);
  }

  void resetState() {
    _email = null;
    _password = null;
    _rememberMe = true;
    vm = LoginVm.initial();
    state = LoginValidation(vm: LoginVm.initial());
  }

  void Function()? get _loginOnPress {
    if (validations.isEmpty && _email != null && _password != null)
      return _login;
    return null;
  }

  bool get _userProfileNeedUpdate {
    final prefs = _read(sharedPreferencesProvider);
    final notAskAgain = prefs.getBool(PROFILE_NOT_ASK_AGAIN) ?? false;
    return !notAskAgain;
  }

  void _navigateToHome(User user){
    _read(pagesProvider.notifier).login(
        userProfileNeedUpdate: user.profile == const EmptyUserProfile()
            ? _userProfileNeedUpdate
            : false);
  }

  void _login() async {
    state = LoginLoading();
    bool userProfileNeedUpdate = false;
    try {
      final login =
          Login(email: _email!, password: _password!, rememberMe: _rememberMe);
      await _read(authRepositoryProvider).login(login: login);
      state = const LoginSuccess();
      final credentials = _read(credentialsProvider);
      credentials.user.maybeMap(
          user: (user) => _navigateToHome(user),
          orElse: () {});
    } on ResponseError catch (e) {
      debugPrint(e.message);
      vm = vm.copyWith(loginError: e.message);
      state = LoginError(vm: vm);
    }
  }

  void Function() get register => _register;

  void _register() {
    _read(pagesProvider.notifier).signUp();
  }

  Future<void> Function()? get logOut => _logOut;

  Future<void> _logOut() async {
    resetState();
    _read(signupStateProvider.notifier).resetState();
    await _read(authRepositoryProvider).logOut();
    _read(pagesProvider.notifier).logOut();
  }
}
