import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/model/password_response.dart';
part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState{
  const factory ResetPasswordState.initial() = _Initial;
  const factory ResetPasswordState.loading() = Loading;
  const factory ResetPasswordState.success(PasswordResponse response) = Success;
  const factory ResetPasswordState.error({required String error}) = Error;
}