import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:doctors_app/core/networking/api_constants.dart';

part 'profile_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio) = _ProfileApiService;
}
