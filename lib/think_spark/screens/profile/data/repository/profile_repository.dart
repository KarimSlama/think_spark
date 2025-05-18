import 'dart:io';
import 'package:think_spark/core/networking/api_error_handler.dart';
import 'package:think_spark/core/networking/api_result.dart';
import 'package:think_spark/think_spark/screens/profile/data/model/profile_request_body.dart';
import 'package:think_spark/think_spark/screens/profile/data/model/profile_response.dart';
import 'package:think_spark/think_spark/screens/profile/data/network/profile_service.dart';

class ProfileRepository {
  final ProfileService _profileService;

  const ProfileRepository(this._profileService);

  Future<ApiResult<ProfileResponse>> updateProfile(
      ProfileRequestBody? profileRequestBody) async {
    try {
      final response =
          await _profileService.fetchUpdateProfile(profileRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ProfileResponse>> loadProfile() async {
    try {
      final response = await _profileService.fetchUpdateProfile(null);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ProfileResponse>> uploadProfileImage(File image) async {
    try {
      final response = await _profileService.uploadProfileImage(image);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
