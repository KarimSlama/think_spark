import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';
part 'biometrics_state.freezed.dart';

@freezed
class BiometricsState with _$BiometricsState {
  const factory BiometricsState.initial() = _Initial;
  const factory BiometricsState.loading() = Loading;
  const factory BiometricsState.isSupported({required bool isSupported}) = _IsSupported;
  const factory BiometricsState.biometricAuthenticated({required bool isAuthenticated}) = BiometricAuthenticated;
  const factory BiometricsState.biometricAvailable (List<BiometricType> biometrics) = BiometricAvailable;
  const factory BiometricsState.biometricError  ({required String error}) = BiometricError ;
}
