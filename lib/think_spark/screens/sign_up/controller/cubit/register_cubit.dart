import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/think_spark/screens/sign_up/controller/cubit/register_state.dart';
import 'package:think_spark/think_spark/screens/sign_up/data/model/register_request_body.dart';
import 'package:think_spark/think_spark/screens/sign_up/data/repository/register_repository.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepository _registerRepository;
  RegisterCubit(this._registerRepository) : super(RegisterState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  String countryCode = '+20';
  bool isPassword = true;
  final GlobalKey<FormState> creativeFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> investorFormKey = GlobalKey<FormState>();

  void createNewUser(int tabIndex) async {
    emit(RegisterState.loading());
    final response = await _registerRepository.register(RegisterRequestBody(
      name: nameController.text,
      userType: tabIndex == 0 ? 'creative' : 'investor',
      email: emailController.text,
      phone: '$countryCode${phoneController.text}',
      password: passwordController.text,
    ));
    response.when(
      success: (data) {
        emit(RegisterState.success(data));
      },
      failure: (errorHandler) {
        emit(RegisterState.error(errors: errorHandler.apiErrorModel.errors));
      },
    );
  }

  changePasswordIcon() {
    isPassword = !isPassword;
    emit(RegisterState.passwordChanged(isPassword: isPassword));
  }
}
