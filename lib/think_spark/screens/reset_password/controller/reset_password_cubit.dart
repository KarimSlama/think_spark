import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/think_spark/screens/reset_password/controller/reset_password_state.dart';
import 'package:think_spark/think_spark/screens/reset_password/data/model/reset_password_request.dart';
import 'package:think_spark/think_spark/screens/reset_password/data/repository/reset_password_repository.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ResetPasswordRepository _resetPasswordRepository;

  ResetPasswordCubit(this._resetPasswordRepository)
      : super(ResetPasswordState.initial());

  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final resetFormKey = GlobalKey<FormState>();

  void resetPassword() async {
    emit(ResetPasswordState.loading());

    final identifier = await SharedPreference.getString('identifier');

    final result = await _resetPasswordRepository.resetPassword(
      ResetPasswordRequest(
        newPassword: newPasswordController.text,
        confirmPassword: confirmPasswordController.text,
        identifier: identifier,
      ),
    );

    result.when(
        success: (response) => emit(ResetPasswordState.success(response)),
        failure: (error) {
          emit(ResetPasswordState.error(
              error: error.apiErrorModel.message.toString()));
        });
  }
}
