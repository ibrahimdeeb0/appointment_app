import 'package:json_annotation/json_annotation.dart';
import 'profile_model.dart';

part 'profile_response_model.g.dart';

@JsonSerializable()
class ProfileResponseModel {
  final String message;
  final List<ProfileModel> data;
  final bool status;
  final int code;

  ProfileResponseModel({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory ProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseModelFromJson(json);
}
