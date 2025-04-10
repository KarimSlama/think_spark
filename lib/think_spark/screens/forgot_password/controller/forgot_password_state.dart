import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:think_spark/think_spark/screens/forgot_password/data/model/password_response.dart';

part 'forgot_password_state.freezed.dart';

@freezed
class ForgotPasswordState<T> with _$ForgotPasswordState<T> {
  const factory ForgotPasswordState.initial() = _Initial;
  const factory ForgotPasswordState.loading() = Loading;
  const factory ForgotPasswordState.success(PasswordResponse data) = Success;
  const factory ForgotPasswordState.failure({required String message}) =
      Failure;
}
