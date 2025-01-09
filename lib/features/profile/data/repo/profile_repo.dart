import 'package:doctors_app/core/networking/api_error_handler.dart';
import 'package:doctors_app/core/networking/api_result.dart';

import '../apis/profile_api_service.dart';
import '../models/profile_model.dart';

class ProfileRepo {
  final ProfileApiService _profileApiService;

  ProfileRepo(this._profileApiService);

  Future<ApiResult<List<ProfileModel>>> getProfileData() async {
    try {
      final response = await _profileApiService.getProfileData();
      return ApiResult.success(response.data);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
