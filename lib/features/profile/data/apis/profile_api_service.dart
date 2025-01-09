import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:doctors_app/core/networking/api_constants.dart';

import '../models/profile_response_model.dart';
import 'profile_api_constants.dart';

part 'profile_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio) = _ProfileApiService;

  @GET(ProfileApiConstants.profileEP)
  Future<ProfileResponseModel> getProfileData();
}
