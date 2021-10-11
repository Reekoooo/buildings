import 'package:building/application/login/login_state_notifier.dart';
import 'package:building/application/login/login_ui_states.dart';
import 'package:building/presentation/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ProviderListener(
              provider: loginStateProvider,
              onChange: (context, LoginState loginState) {
                loginState.maybeWhen(
                    error: (vm) => ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(vm.loginError ?? 'Login Error'))),
                    orElse: () {});
              },
              child: Consumer(
                builder: (context, watch, child) {
                  final state = watch(loginStateProvider);
                  return state.when(
                      loading: () => CircularProgressIndicator(),
                      success: () => Text('success'),
                      validation: (vm) => LoginForm(vm: vm),
                      error: (vm) => LoginForm(vm: vm));
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
