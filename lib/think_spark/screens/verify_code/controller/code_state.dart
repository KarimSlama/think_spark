import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/model/password_response.dart';
part 'code_state.freezed.dart';

@freezed
class CodeState<T> with _$CodeState<T>{

  const factory CodeState.initial() = _Initial;
  const factory CodeState.loading() = Loading;
  const factory CodeState.success(PasswordResponse response) = Success;
  const factory CodeState.error({required String error}) = Error;
}