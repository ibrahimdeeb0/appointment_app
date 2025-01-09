import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doctors_app/core/networking/api_error_model.dart';
import 'package:doctors_app/features/profile/data/models/profile_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;

  // Profile Data
  const factory ProfileState.profileDataLoading() = ProfileDataLoading;
  const factory ProfileState.profileDataSuccess(List<ProfileModel> profileData) =
      ProfileDataSuccess;

  const factory ProfileState.profileDataError(ApiErrorModel apiErrorModel) =
      ProfileDataError;
}
