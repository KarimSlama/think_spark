import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/think_spark/screens/forgot_password/controller/forgot_password_state.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/model/forgot_password_request.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/repository/forgot_password_repository.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordRepository _forgotPasswordRepository;
  ForgotPasswordCubit(this._forgotPasswordRepository)
      : super(const ForgotPasswordState.initial());

  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final forgotFormKey = GlobalKey<FormState>();
  String countryCode = '+20';

  void addForgotPasswordIdentifier(int index) async {
    emit(const ForgotPasswordState.loading());
    final identifier = index == 0
        ? '$countryCode${phoneController.text}'
        : emailController.text;
    final response =
        await _forgotPasswordRepository.addForgotPasswordIdentifier(
            ForgotPasswordRequest(identifier: identifier));
    response.when(success: (data) async{
      await SharedPreference.setData('identifier', data.identifier);
      emit(ForgotPasswordState.success(data));
    }, failure: (error) {
      emit(ForgotPasswordState.failure(
          message: error.apiErrorModel.message.toString()));
    });
  }
}
