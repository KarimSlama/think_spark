import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:local_auth/local_auth.dart';
import 'package:think_spark/core/common/local/shared_preferences.dart';
import 'package:think_spark/think_spark/screens/biometrics/controller/cubit/biometrics_state.dart';

class BiometricCubit extends Cubit<BiometricsState> {
  BiometricCubit() : super(BiometricsState.initial()) {
    checkBiometricStatus();
  }
  final LocalAuthentication _auth = LocalAuthentication();
  bool isAuthenticated = false;

  Future<void> checkDeviceSupport() async {
    final isSupported = await _auth.isDeviceSupported();
    emit(BiometricsState.isSupported(isSupported: isSupported));
  }

Future<void> checkBiometricStatus() async {
  final value = SharedPreference.getBool('isBiometricEnabled') ?? false;
  isAuthenticated = value;
  emit(BiometricsState.biometricAuthenticated(isAuthenticated: value));
}


  Future<void> toggleBiometric(bool value) async {
    isAuthenticated = value;
    await SharedPreference.setData('isBiometricEnabled', value);
    emit(BiometricsState.biometricAuthenticated(
        isAuthenticated: isAuthenticated));
  }


  Future<void> getAvailableAuthenticators() async {
    try {
      final biometrics = await _auth.getAvailableBiometrics();
      emit(BiometricsState.biometricAvailable(biometrics));
    } on PlatformException catch (e) {
      emit(BiometricsState.biometricError(error: e.message ?? 'Unknown error'));
    }
  }
}