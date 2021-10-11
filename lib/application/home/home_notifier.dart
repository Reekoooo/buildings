import 'package:building/application/home/home_ui_states.dart';
import 'package:building/application/home/home_vm.dart';
import 'package:building/application/login/login_state_notifier.dart';
import 'package:building/application/router/router_provider.dart';
import 'package:building/infrastructure/datasources/authenticated_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_ui_states.dart';

final homeStateProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  HomeState state = NoUserData();
  final credentials = ref.watch(credentialsProvider);

  print (credentials.user);

  credentials.user.maybeMap(
    user: (user) => state = UserData(
        vm: HomeVm(
      profileImage: user.profile.maybeMap(
          normal: (userProfile)=> userProfile.profileImage,
          orElse: () {}),
      buildings: user.buildingOwner,
      flats: user.flatOwner..addAll(user.flatResident),
      profileImageOnTap: ref.read(pagesProvider.notifier).editUserProfile,
    )),
    orElse: () {
      state = NoUserData();
    },
  );

  return HomeNotifier(state,ref.read);
});

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state,this._read) : super(state);

  final Reader _read;

  Future<void>  logOut() async{
    state = const HomeStateLoading();
     await _read(loginStateProvider.notifier).logOut?.call();
     state = const NoUserData();
  }
}
