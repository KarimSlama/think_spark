import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/sign_up/data/model/register_response.dart';
part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.success(RegisterResponse data) = Success;
  const factory RegisterState.error({required Map<String, List<String>?>? errors}) = Error;
}