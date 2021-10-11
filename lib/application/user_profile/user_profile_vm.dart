import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_vm.freezed.dart';

@freezed
class UserProfileVm with _$UserProfileVm {

  const factory UserProfileVm({
    required String firstName,
    String? firstNameError,
    required String lastName,
    String? lastNameError,
    String? profileImage,
    String? tempProfileImage,
    required bool notAskAgain,
    required bool isLoading,
    void Function()? onSavePress,
    String? saveError,
  }) = _UserProfileVm;

  factory UserProfileVm.initial() => const UserProfileVm(
        firstName: '',
        lastName: '',
        notAskAgain: false,
        isLoading: false,
      );
}
