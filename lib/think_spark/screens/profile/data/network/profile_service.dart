import 'dart:io';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:think_spark/core/networking/api_constants.dart';
import 'package:think_spark/think_spark/screens/profile/data/model/profile_request_body.dart';
import 'package:think_spark/think_spark/screens/profile/data/model/profile_response.dart';
import 'package:think_spark/think_spark/screens/profile/data/network/profile_constants.dart';

part 'profile_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProfileService {
  factory ProfileService(Dio dio, {String baseUrl}) = _ProfileService;

  @PATCH(ProfileConstants.profile)
  Future<ProfileResponse> fetchUpdateProfile(
      @Body() ProfileRequestBody? profileRequestBody);

  @PATCH(ProfileConstants.profile)
  @Part()
  Future<ProfileResponse> uploadProfileImage(
    @Part(name: 'image') File image,
  );
}
