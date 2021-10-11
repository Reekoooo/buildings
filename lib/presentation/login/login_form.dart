import 'package:building/application/login/login_state_notifier.dart';
import 'package:building/application/login/login_vm.dart';
import 'package:building/presentation/labeled_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key, required this.vm}) : super(key: key);

  final LoginVm vm;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            initialValue: vm.email,
            onChanged: context.read(loginStateProvider.notifier).emailChanged,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
              errorText: vm.emailError,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            initialValue: vm.password,
            onChanged:
                context.read(loginStateProvider.notifier).passwordChanged,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
              errorText: vm.passwordError,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: LabeledCheckbox(
                  label: 'Remember me?',
                  padding: EdgeInsets.zero,
                  value: vm.rememberMe,
                  onChanged:
                      context.read(loginStateProvider.notifier).rememberMe,
                ),
              ),
              Text('forget password?'),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: SizedBox(
                width: double.infinity,
                height: 40,
                child: Center(child: Text('Login'))),
            onPressed: vm.onLoginPress,
          ),
          SizedBox(
            height: 10,
          ),
          Text('Don\'t have account yet?'),
          ElevatedButton(
            child: SizedBox(
                width: double.infinity,
                height: 40,
                child: Center(child: Text('Register'))),
            onPressed: context.read(loginStateProvider.notifier).register,
          ),
        ],
      ),
    );
  }
}
