import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/sign_up/data/model/register_response.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(RegisterResponse response) = Success;
  const factory LoginState.error(
      {required Map<String, List<String>?>? errors}) = Error;
  const factory LoginState.passwordChanged({required bool isPassword}) =
      Changed;
}
