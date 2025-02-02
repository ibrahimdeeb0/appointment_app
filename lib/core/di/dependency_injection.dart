import 'package:dio/dio.dart';
import 'package:doctors_app/core/helpers/app_logger.dart';
import 'package:doctors_app/core/networking/api_service.dart';
import 'package:doctors_app/core/networking/dio_factory.dart';
import 'package:doctors_app/features/home/data/apis/home_api_service.dart';
import 'package:doctors_app/features/home/data/repositories/home_repo.dart';
import 'package:doctors_app/features/home/logic/home_cubit.dart';
import 'package:doctors_app/features/profile/data/apis/profile_api_service.dart';
import 'package:doctors_app/features/profile/data/repo/profile_repo.dart';
import 'package:doctors_app/features/profile/logic/cubit/profile_cubit.dart';
import 'package:doctors_app/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:doctors_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../features/login/data/repo/login_repo.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../navigation/app_navigator_observer.dart';
import '../navigation/app_router.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerSingleton<AppNavigatorObserver>(AppNavigatorObserver());

  // Logger
  getIt.registerLazySingleton<AppLogger>(
    () => AppLogger(
      enableLogging: true,
      minimumLogLevel: Level.debug,
      customOutput: MultiOutput([
        DeveloperConsoleOutput(),
      ]),
    ),
  );

  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  // profile
  getIt.registerLazySingleton<ProfileApiService>(() => ProfileApiService(dio));
  getIt.registerLazySingleton<ProfileRepo>(() => ProfileRepo(getIt()));
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt()));
}
