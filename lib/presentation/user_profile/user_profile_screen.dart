import 'package:building/application/user_profile/user_profile_state_notifier.dart';
import 'package:building/application/user_profile/user_profile_ui_states.dart';
import 'package:building/presentation/user_profile/user_profile_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('User Profile')),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: ProviderListener(
                provider: userProfileStateProvider,
                onChange: (context, UserProfileState userProfileState) {
                  userProfileState.maybeWhen(
                      error:(vm)=>ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(vm.saveError ?? 'Save Error'))),
                      orElse: (){});
                },
                child:Consumer(
                  builder: (context,watch,child){
                    final state = watch(userProfileStateProvider);
                    return state.when(
                        loading: () => CircularProgressIndicator(),
                        success: () => Text('Success'),
                        validation: (vm) => UserProfileForm(vm: vm),
                        error: (vm) => UserProfileForm(vm: vm));
                  },
                ),
              ),
            ),
          )
      ),
    );
  }
}
