import 'dart:io';

import 'package:building/application/user_profile/user_profile_state_notifier.dart';
import 'package:building/application/user_profile/user_profile_vm.dart';
import 'package:building/infrastructure/providers/image_picker_provider.dart';
import 'package:building/presentation/labeled_check_box.dart';
import 'package:building/utils/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserProfileForm extends StatelessWidget {
  const UserProfileForm({Key? key, required this.vm}) : super(key: key);

  final UserProfileVm vm;

  @override
  Widget build(BuildContext context) {
    void _avatarOnTap() async {
      String? path;
      final source = await showModalBottomSheet<ImageSource>(
        isScrollControlled: true,
        context: context,
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10.0),
            Text('Select Source'),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(ImageSource.camera);
              },
              child: Text('Camera'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(ImageSource.gallery);
              },
              child: Text('Gallery'),
            ),
          ],
        ),
      );

      switch (source) {
        case null:
          break;
        default:
          final imageFile = await context
              .read(imagePickerProvider)
              .pickImage(source: source!);
          path = imageFile?.path;
          if (path != null) {
            context
                .read(userProfileStateProvider.notifier)
                .imageProfileChanged(path);
          }
      }
    }

    return Column(
      children: [
        GestureDetector(
          onTap: _avatarOnTap,
          child: CircleAvatar(
            backgroundImage: vm.tempProfileImage !=null?
                FileImage(File(vm.tempProfileImage!)):
            vm.profileImage != null
                ? NetworkImage(
                    '$HOST_NAME/${vm.profileImage!.split('/')[1]}')
                : AssetImage('assets/img.png') as ImageProvider,
            radius: 50,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          initialValue: vm.firstName,
          onChanged:
              context.read(userProfileStateProvider.notifier).firstNameChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'first name',
            errorText: vm.firstNameError,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          initialValue: vm.lastName,
          onChanged:
              context.read(userProfileStateProvider.notifier).lastNameChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'last name',
            errorText: vm.lastNameError,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 10,
        ),
        LabeledCheckbox(
          label: 'Don\'t ask again?',
          padding: EdgeInsets.zero,
          value: vm.notAskAgain,
          onChanged: context.read(userProfileStateProvider.notifier).askAgain,
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          child: SizedBox(
            width: double.infinity,
            child: Center(
              child: Text('Save'),
            ),
          ),
          onPressed: vm.onSavePress,
        ),
        ElevatedButton(
          child: SizedBox(
            width: double.infinity,
            child: Center(
              child: Text('Cancel'),
            ),
          ),
          onPressed: context.read(userProfileStateProvider.notifier).cancel,
        )
      ],
    );
  }
}
