import 'package:doctors_app/features/login/data/models/login_request_body.dart';
import 'package:doctors_app/features/login/data/repo/login_repo.dart';
import 'package:doctors_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);

    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (errorHandler) {
        emit(LoginState.error(error: errorHandler.apiErrorModel.message ?? ''));
      },
    );
  }
}