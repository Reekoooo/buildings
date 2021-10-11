import 'package:building/application/signup/signup_state_notifier.dart';
import 'package:building/application/signup/signup_vm.dart';
import 'package:building/presentation/labeled_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
    required this.vm,
  }) : super(key: key);

  final SignupVm vm;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          initialValue: vm.email,
          onChanged: context.read(signupStateProvider.notifier).emailChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
            errorText: vm.emailError,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          initialValue: vm.password,
          onChanged: context.read(signupStateProvider.notifier).passwordChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            errorText: vm.passwordError,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          initialValue: vm.passwordConfirm,
          onChanged:
              context.read(signupStateProvider.notifier).passwordConfirmChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password Confirm',
            errorText: vm.passwordConfirmError,
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
                    context.read(signupStateProvider.notifier).rememberMe,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          child: SizedBox(
            width: double.infinity,
            child: Center(
              child: Text('REGISTER'),
            ),
          ),
          onPressed: vm.onSignupPress,
        )
      ],
    );
  }
}
