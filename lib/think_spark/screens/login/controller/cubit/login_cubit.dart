import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/think_spark/screens/login/controller/cubit/login_state.dart';
import 'package:think_spark/think_spark/screens/login/data/model/login_request_body.dart';
import 'package:think_spark/think_spark/screens/login/data/repository/login_repository.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository loginRepository;
  LoginCubit(this.loginRepository) : super(LoginState.initial());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  void loginUser() async {
    emit(LoginState.loading());
    final result = await loginRepository.login(LoginRequestBody(
        email: emailController.text, password: passwordController.text));

    result.when(success: (response) {
      emit(LoginState.success(response));
    }, failure: (errorHandler) {
      emit(LoginState.error(errors: errorHandler.apiErrorModel.errors));
    });
  }
}
