// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponseModel _$ProfileResponseModelFromJson(
        Map<String, dynamic> json) =>
    ProfileResponseModel(
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => ProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$ProfileResponseModelToJson(
        ProfileResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'status': instance.status,
      'code': instance.code,
    };
