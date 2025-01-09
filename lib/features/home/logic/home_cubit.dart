import 'package:doctors_app/core/constants/specialty_icons_paths.dart';
import 'package:doctors_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/specializations_response_model.dart';
import '../data/repositories/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();

    response.when(
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];

        // getting the doctors list for the first specialization by default.
        getDoctorsList(specializationId: specializationsList?.first?.id);

        emit(HomeState.specializationsSuccess(
            specializationsResponseModel.specializationDataList));
      },
      failure: (apiErrorModel) {
        emit(HomeState.specializationsError(apiErrorModel));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<DoctorModel?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList!.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(const HomeState.doctorsError());
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }

  String? getSpecialtyIconPath(String name) {
    try {
      return IconsPathConstant.specialtyIconsPaths.firstWhere(
          (element) => element['name']!.toLowerCase() == name.toLowerCase(),
          orElse: () => {})['path'];
    } catch (e) {
      debugPrint('Error finding icon path for $name: $e');
      var defaultPath = 'assets/images/home_specialty_general.png';
      return defaultPath;
    }
  }
}
