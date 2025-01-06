import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';


@JsonSerializable()
class ProfileModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? gender;

  ProfileModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.gender,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
