import 'package:building/application/router/router_provider.dart';
import 'package:building/application/user_profile/user_profile_ui_states.dart';
import 'package:building/application/user_profile/user_profile_vm.dart';
import 'package:building/infrastructure/datasources/authenticated_user.dart';
import 'package:building/infrastructure/providers/data_sorces_providers.dart';
import 'package:building/infrastructure/providers/repository_providers.dart';
import 'package:building/model/user/user_profile.dart';
import 'package:building/model/value_objects/name.dart';
import 'package:building/utils/constants.dart';
import 'package:building/utils/custom_exceptions/login_exception.dart';
import 'package:building/utils/custom_exceptions/validation_exception.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProfileStateProvider =
    StateNotifierProvider<UserProfileNotifier, UserProfileState>((ref) {
  UserProfileVm initialVm = UserProfileVm.initial();
  final credentials = ref.watch(credentialsProvider);
  credentials.user.maybeMap(
    user: (user) {
      if (user.profile != const EmptyUserProfile()) {
        final profile = user.profile as UserProfile;

        initialVm = initialVm.copyWith(
          firstName: profile.firstName.firstName,
          lastName: profile.lastName.lastName,
          profileImage: profile.profileImage
        );
      }
    },
    orElse: () {},
  );

  return UserProfileNotifier(ref.read, initialVm);
});

class UserProfileNotifier extends StateNotifier<UserProfileState> {
  UserProfileNotifier(this._read, this._initialVm)
      : vm = _initialVm,
        super(UserProfileValidation(vm: _initialVm)) {
    resetState();
  }

  UserProfileVm? savedProfile;
  final Reader _read;
  final UserProfileVm _initialVm;
  UserProfileVm vm;

  final Set<ValidationError> validations = {};
  FirstName? _firstName;
  LastName? _lastName;
  //String? _profileImage;
  String? _tempProfileImage;
  bool _notAskAgain = false;

  void imageProfileChanged(String image) {
    _tempProfileImage = image;
    vm = vm.copyWith(tempProfileImage: _tempProfileImage);
    vm = vm.copyWith(onSavePress: _saveOnPress);
    state = UserProfileValidation(vm: vm);
  }

  void firstNameChanged(String firstName) {
    print('firstName = $firstName');
    try {
      _firstName = FirstName(firstName);
      validations.remove(FirstNameValidationError());
      vm = vm.copyWith(firstNameError: null);
    } on NameValidationError catch (e) {
      validations.add(FirstNameValidationError());
      vm = vm.copyWith(firstNameError: e.message);
    } finally {
      vm = vm.copyWith(firstName: firstName);
      vm = vm.copyWith(onSavePress: _saveOnPress);
      state = UserProfileValidation(vm: vm);
    }
  }

  void lastNameChanged(String lastName) {
    try {
      _lastName = LastName(lastName);
      validations.remove(LastNameValidationError());
      vm = vm.copyWith(lastNameError: null);
    } on NameValidationError catch (e) {
      validations.add(LastNameValidationError());
      vm = vm.copyWith(lastNameError: e.message);
    } finally {
      vm = vm.copyWith(lastName: lastName);
      vm = vm.copyWith(onSavePress: _saveOnPress);
      state = UserProfileValidation(vm: vm);
    }
  }

  void askAgain(bool value) {
    _notAskAgain = value;
    vm = vm.copyWith(notAskAgain: _notAskAgain);
    state = UserProfileValidation(vm: vm);
  }

  void resetState() {
    _lastName =
        _initialVm.lastName.isEmpty ? null : LastName(_initialVm.lastName);
    _firstName =
        _initialVm.firstName.isEmpty ? null : FirstName(_initialVm.firstName);
    _notAskAgain = false;
    _tempProfileImage = null;
    vm = _initialVm;
    state = UserProfileValidation(vm: vm);
  }

  void Function()? get _saveOnPress {

    final isFormEdited = _firstName != null && _lastName != null;
    final isFormValid = isFormEdited && validations.isEmpty;

    final isFormInitial = vm.firstName == _initialVm.firstName &&
                          vm.lastName == _initialVm.lastName && _tempProfileImage == null;

    print('isFormEdited = $isFormEdited isFormValid = $isFormValid isFormInitial = $isFormInitial');


    if (isFormValid && !isFormInitial){
      return _save;
    }
    return null;

  }

  void _save() async {
    state = UserProfileLoading();
    try {
      final myProfile =
          UserProfile(firstName: _firstName!, lastName: _lastName!,profileImage: _tempProfileImage);
      print('user profile is $myProfile');
      await _read(authRepositoryProvider).updateMe(myProfile: myProfile);
      savedProfile = vm;
      state = UserProfileSuccess();
      _read(pagesProvider.notifier).cancel();
      resetState();
    } on ResponseError catch (e) {
      debugPrint(e.message);
      vm = vm.copyWith(saveError: e.message);
      state = UserProfileError(vm: vm);
    }
  }

  void Function() get cancel => _cancel;

  void _cancel() {
    final prefs = _read(sharedPreferencesProvider);
    prefs.setBool(PROFILE_NOT_ASK_AGAIN, _notAskAgain);
    _read(pagesProvider.notifier).cancel();
    resetState();
  }
}
