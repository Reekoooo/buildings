import 'package:building/application/signup/signup_state_notifier.dart';
import 'package:building/application/signup/signup_ui_states.dart';
import 'package:building/presentation/signup/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
                child: ProviderListener(
              provider: signupStateProvider,
              onChange: (context, SignupState signupState) {
                signupState.maybeWhen(
                  error: (vm) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(vm.signupError ?? 'Login Error'))),
                  orElse: () {},
                );
              },
              child: Consumer(
                builder: (context, watch, child) {
                  final state = watch(signupStateProvider);
                  return state.when(
                      loading: () => CircularProgressIndicator(),
                      success: () => Text('Success'),
                      validation: (vm) => SignUpForm(vm: vm),
                      error: (vm) => SignUpForm(vm: vm));
                },
              ),
            )),
          ),
        ),
      ),
    );
  }
}
