import 'package:doctors_app/core/di/dependency_injection.dart';
import 'package:doctors_app/core/helpers/app_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/profile_repo.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;
  ProfileCubit(this._profileRepo) : super(const ProfileState.initial());

  void getProfileData() async {
    final response = await _profileRepo.getProfileData();

    response.when(
      success: (profileData) {
        getIt<AppLogger>()
            .info('--------------->>Data success<<--------------');
        emit(ProfileState.profileDataSuccess(profileData));
      },
      failure: (apiErrorModel) {
        getIt<AppLogger>()
            .info('--------------->>apiErrorModel<<--------------');
        emit(ProfileState.profileDataError(apiErrorModel));
      },
    );
  }
}
