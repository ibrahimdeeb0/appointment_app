import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doctors_app/core/widgets/app_vertical_spacing.dart';
import 'package:doctors_app/core/networking/api_error_model.dart';
import 'package:doctors_app/core/widgets/app_dialog.dart';

import '../../../logic/home_cubit.dart';
import '../../../logic/home_state.dart';
import '../doctors_list/doctors_shimmer_loading.dart';
import 'specialty_list_view.dart';
import 'specialty_shimmer_loading.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listenWhen: (previous, current) => current is SpecializationsError,
      listener: (context, state) {
        state.maybeWhen(
          specializationsError: (errorHandler) =>
              setupError(context: context, errorHandler: errorHandler),
          orElse: () => const SizedBox.shrink(),
        );
      },
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is SpecializationsLoading ||
            current is SpecializationsSuccess ||
            current is SpecializationsError,
        builder: (context, state) {
          return state.maybeWhen(
            specializationsLoading: () {
              return setupLoading();
            },
            specializationsSuccess: (specializationDataList) {
              var specializationsList = specializationDataList;
              return setupSuccess(specializationsList);
            },
            specializationsError: (errorHandler) => const SizedBox.shrink(),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return const Expanded(
      child: Column(
        children: [
          SpecialtyShimmerLoading(),
          VerticalSpacing(height: 8),
          DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupSuccess(specializationsList) {
    return SpecialtyListView(
      specializationDataList: specializationsList ?? [],
    );
  }

  Future<void> setupError({
    required BuildContext context,
    required ApiErrorModel errorHandler,
  }) {
    return AppDialog.show(
      context: context,
      title: 'Something Went Wrong!',
      barrierDismissible: false,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(errorHandler.message ?? 'An unknown error occurred.'),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
