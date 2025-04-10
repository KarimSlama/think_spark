import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/think_spark/screens/verify_code/controller/code_state.dart';
import 'package:think_spark/think_spark/screens/verify_code/data/model/code_request.dart';
import 'package:think_spark/think_spark/screens/verify_code/data/repository/code_repository.dart';

class CodeCubit extends Cubit<CodeState> {
  final CodeRepository _codeRepository;
  CodeCubit(this._codeRepository) : super(CodeState.initial());

  final List<TextEditingController> codeControllers = List.generate(
    4,
    (index) => TextEditingController(),
  );

  final codeFormKey = GlobalKey<FormState>();

  void verifyCode() async {
    emit(CodeState.loading());

    final String fullCode =
        codeControllers.map((controller) => controller.text).join();

    if (fullCode.length != 4) {
      emit(CodeState.error(error: "Not match 4 numbers"));
      return;
    }
    final identifier = await SharedPreference.getString('identifier');
    final response = await _codeRepository.verifyCode(CodeRequest(
      identifier: identifier,
      code: fullCode,
    ));
    response.when(
        success: (code) => emit(CodeState.success(code)),
        failure: (error) {
          emit(CodeState.error(error: error.apiErrorModel.message.toString()));
        });
  }

  void dispose() {
    for (var controller in codeControllers) {
      controller.dispose();
    }
  }
}
