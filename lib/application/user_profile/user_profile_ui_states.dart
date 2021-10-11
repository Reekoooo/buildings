import 'package:building/application/user_profile/user_profile_vm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_ui_states.freezed.dart';
@freezed
class UserProfileState with _$UserProfileState{
  const factory UserProfileState.loading() = UserProfileLoading;
  const factory UserProfileState.success() = UserProfileSuccess;
  const factory UserProfileState.validation({required UserProfileVm vm})= UserProfileValidation;
  const factory UserProfileState.error({required UserProfileVm vm}) = UserProfileError;
}

