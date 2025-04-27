import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:think_spark/core/common/widgets/app_bar/spark_app_bar.dart';
import 'package:think_spark/core/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:think_spark/core/constants/spark_colors.dart';
import 'package:think_spark/core/constants/spark_string.dart';
import 'package:think_spark/think_spark/screens/biometrics/controller/cubit/biometrics_cubit.dart';
import 'package:think_spark/think_spark/screens/biometrics/controller/cubit/biometrics_state.dart';

class BiometricsScreen extends StatelessWidget {
  const BiometricsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SparkAppBar(
        showBackArrow: true,
        title: Text(SparkString.enableFingerPrint),
      ),
      body: BlocBuilder<BiometricCubit, BiometricsState>(
        builder: (context, state) {
          bool isSwitchEnabled = false;

          state.maybeWhen(
            biometricAuthenticated: (isAuthenticated) {
              isSwitchEnabled = isAuthenticated;
            },
            orElse: () {},
          );
          final cubit = context.read<BiometricCubit>();
          return SettingsMenuTile(
            icon: Iconsax.finger_cricle,
            title: SparkString.enableFingerPrint,
            trailing: Switch(
              value: isSwitchEnabled,
              onChanged: (value) {
                cubit.toggleBiometric(value);
              },
              activeColor: SparkColors.white,
              activeTrackColor: SparkColors.anakiwa,
              trackOutlineColor: WidgetStateProperty.resolveWith(
                (final Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) {
                    return null;
                  }
                  return Colors.transparent;
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
