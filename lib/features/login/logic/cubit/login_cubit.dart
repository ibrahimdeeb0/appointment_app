import 'package:doctors_app/core/constants/shared_pref_keys.dart';
import 'package:doctors_app/core/helpers/shared_pref_helper.dart';
import 'package:doctors_app/core/networking/dio_factory.dart';
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

  void emitLoginStates() async {
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.userData?.token ?? '');
       emit(LoginState.loginSuccess(loginResponse));
     }, failure: (apiErrorModel) {
       emit(LoginState.loginError(apiErrorModel));
    });
  }

   Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
