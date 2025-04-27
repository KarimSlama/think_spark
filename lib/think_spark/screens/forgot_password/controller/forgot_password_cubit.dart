import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_state.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/model/forgot_password_request.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/repository/forgot_password_repository.dart';
import 'package:think_spark/think_spark/screens/reset_password/data/model/reset_password_request.dart';
import 'package:think_spark/think_spark/screens/reset_password/data/repository/reset_password_repository.dart';
import 'package:think_spark/think_spark/screens/verify_code/data/model/code_request.dart';
import 'package:think_spark/think_spark/screens/verify_code/data/repository/code_repository.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordRepository _forgotPasswordRepository;
  final CodeRepository _codeRepository;
  final ResetPasswordRepository _resetPasswordRepository;
  ForgotPasswordCubit(this._forgotPasswordRepository, this._codeRepository, this._resetPasswordRepository)
      : super(const ForgotPasswordState.initial());

  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final resetFormKey = GlobalKey<FormState>();
  final forgotFormKey = GlobalKey<FormState>();
  final codeFormKey = GlobalKey<FormState>();

  String countryCode = '+20';

  final List<TextEditingController> codeControllers = List.generate(
    4,
    (index) => TextEditingController(),
  );


  void addForgotPasswordIdentifier(int index) async {
    emit(const ForgotPasswordState.loading());
    final identifier = index == 0
        ? '$countryCode${phoneController.text}'
        : emailController.text;
    final response =
        await _forgotPasswordRepository.addForgotPasswordIdentifier(
            ForgotPasswordRequest(identifier: identifier));
    response.when(success: (data) async {
      await SharedPreference.setData('identifier', data.identifier);
      emit(ForgotPasswordState.success(data));
    }, failure: (error) {
      emit(ForgotPasswordState.failure(
          message: error.apiErrorModel.message.toString()));
    });
  }

  void verifyCode() async {
    emit(ForgotPasswordState.loading());

    final String fullCode =
        codeControllers.map((controller) => controller.text).join();

    if (fullCode.length != 4) {
      emit(ForgotPasswordState.failure(message: "Not match 4 numbers"));
      return;
    }
    final identifier = await SharedPreference.getString('identifier');
    final response = await _codeRepository.verifyCode(CodeRequest(
      identifier: identifier,
      code: fullCode,
    ));
    response.when(
        success: (code) => emit(ForgotPasswordState.success(code)),
        failure: (error) {
          emit(ForgotPasswordState.failure(
              message: error.apiErrorModel.message.toString()));
        });
  }

  void resetPassword() async {
    emit(ForgotPasswordState.loading());

    final identifier = await SharedPreference.getString('identifier');

    final result = await _resetPasswordRepository.resetPassword(
      ResetPasswordRequest(
        newPassword: newPasswordController.text,
        confirmPassword: confirmPasswordController.text,
        identifier: identifier,
      ),
    );

    result.when(
        success: (response) => emit(ForgotPasswordState.success(response)),
        failure: (error) {
          emit(ForgotPasswordState.failure(
              message: error.apiErrorModel.message.toString()));
        });
  }

    void dispose() {
    for (var controller in codeControllers) {
      controller.dispose();
    }
  }

}
