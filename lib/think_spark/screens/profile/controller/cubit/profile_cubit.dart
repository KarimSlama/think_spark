import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/core/common/widgets/loaders/popus.dart';
import 'package:think_spark/core/constants/constants.dart';
import 'package:think_spark/think_spark/screens/profile/controller/cubit/profile_state.dart';
import 'package:think_spark/think_spark/screens/profile/data/model/profile_request_body.dart';
import 'package:think_spark/think_spark/screens/profile/data/model/profile_response.dart';
import 'package:think_spark/think_spark/screens/profile/data/repository/profile_repository.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository profileRepository;
  ProfileCubit(this.profileRepository) : super(ProfileState.initial());

  ProfileResponse profileResponse = ProfileResponse.empty();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final bioController = TextEditingController();
  final newEmailController = TextEditingController();
  final newEmailFormKey = GlobalKey<FormState>();
  int emailUpdateStep = 0;
  bool isDark = false;

  void handleEmailUpdate(BuildContext context) {
    switch (emailUpdateStep) {
      case 0:
        if (profileResponse.profile.email == emailController.text) {
          emit(ProfileState.stepChanged(stepIndex: emailUpdateStep + 1));
          emailUpdateStep = emailUpdateStep + 1;
        } else {
          Loaders.warningSnackBar(
              context: context, title: 'Email is not correct!');
        }
        break;

      case 1:
        if (newEmailController.text.isEmpty) {
          Loaders.warningSnackBar(
              context: context, title: 'Please enter your new email');
          return;
        }

        if (profileResponse.profile.email == newEmailController.text) {
          Loaders.warningSnackBar(
              context: context, title: 'Email already the same!');
        } else if (newEmailFormKey.currentState!.validate()) {
          updateProfile(ProfileRequestBody(email: newEmailController.text));
        }
        break;
    }
  }

  void updateProfile(ProfileRequestBody profileRequestBody) async {
    emit(ProfileState.loading());
    final result = await profileRepository.updateProfile(profileRequestBody);

    result.when(success: (profile) {
      emit(ProfileState.success(profile));
    }, failure: (error) {
      emit(ProfileState.error(error.apiErrorModel.message.toString()));
    });
  }

  void fetchProfile() async {
    emit(ProfileState.loading());
    final result = await profileRepository.loadProfile();

    result.when(success: (profile) {
      profileResponse = profile;
      Constants.userRole = profile.profile.userType;
      SharedPreference.setData(Constants.userTypeKey, profile.profile.userType);
      initializeFields(
          profile.profile.userName, profile.profile.phone, profile.profile.bio);
      emit(ProfileState.success(profile));
    }, failure: (error) {
      emit(ProfileState.error(error.apiErrorModel.message.toString()));
    });
  }

  void initializeFields(fullName, phone, bio) {
    fullNameController.text = fullName;
    phoneController.text = phone;
    bioController.text = bio;
  }

  Future<void> uploadUserProfilePicture() async {
    File? imageFile;
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 70,
        maxHeight: 512,
        maxWidth: 512,
      );

      if (image == null) {
        return;
      }

      emit(ProfileState.loading());

      imageFile = File(image.path);
      final result = await profileRepository.uploadProfileImage(imageFile);

      result.when(
        success: (profile) {
          profileResponse = profile;
          emit(ProfileState.success(profile));
        },
        failure: (error) {
          emit(ProfileState.error(error.apiErrorModel.message.toString()));
        },
      );
    } catch (error) {
      emit(ProfileState.error(error.toString()));
    } finally {
      if (imageFile != null && imageFile.existsSync()) {
        imageFile.deleteSync();
      }
    }
  }

  void changeMode(bool? value) {
    if (value != null) {
      isDark = value;
    } else {
      isDark = !isDark;
    }

    SharedPreference.setData(Constants.darkModeKey, isDark);
    emit(ProfileState.modeChanged(isDark));
  }
}
